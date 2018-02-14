-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Feb 14 13:05:29 2018
-- Host        : sergiua-ro running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               D:/TEMP/Nexys-Video-PS2-Keyboard-master/src/bd/design_1/ip/design_1_axi_ps2_0_0_1/design_1_axi_ps2_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_ps2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_SyncAsync is
  port (
    ps2_clk_clean_reg : out STD_LOGIC;
    clk_inter_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ps2_clk_clean : in STD_LOGIC;
    clk_inter : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \clk_count_reg[5]\ : in STD_LOGIC;
    reset_flag_reg : in STD_LOGIC;
    S_AXI_aclk : in STD_LOGIC;
    PS2_Clk_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_SyncAsync : entity is "SyncAsync";
end design_1_axi_ps2_0_0_SyncAsync;

architecture STRUCTURE of design_1_axi_ps2_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ROM_STYLE : string;
  attribute ROM_STYLE of oSyncStages : signal is "distributed";
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
\clk_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => clk_inter,
      I1 => oSyncStages(1),
      I2 => reset_flag_reg,
      O => SR(0)
    );
clk_inter_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => reset_flag_reg,
      O => clk_inter_reg
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => PS2_Clk_I,
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
ps2_clk_clean_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE8AAAAAA"
    )
        port map (
      I0 => ps2_clk_clean,
      I1 => oSyncStages(1),
      I2 => clk_inter,
      I3 => Q(0),
      I4 => \clk_count_reg[5]\,
      I5 => reset_flag_reg,
      O => ps2_clk_clean_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_SyncAsync_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ps2_data_clean_reg : out STD_LOGIC;
    data_inter0 : out STD_LOGIC;
    \data_count_reg_0__s_port_]\ : in STD_LOGIC;
    data_count_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_inter : in STD_LOGIC;
    ps2_data_clean : in STD_LOGIC;
    S_AXI_aclk : in STD_LOGIC;
    PS2_Data_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_SyncAsync_0 : entity is "SyncAsync";
end design_1_axi_ps2_0_0_SyncAsync_0;

architecture STRUCTURE of design_1_axi_ps2_0_0_SyncAsync_0 is
  signal \data_count_reg_0__s_net_1\ : STD_LOGIC;
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ROM_STYLE : string;
  attribute ROM_STYLE of oSyncStages : signal is "distributed";
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \data_count_reg_0__s_net_1\ <= \data_count_reg_0__s_port_]\;
  \out\(0) <= oSyncStages(1);
\data_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => oSyncStages(1),
      I1 => data_inter,
      O => data_inter0
    );
\oSyncStages_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => PS2_Data_I,
      Q => oSyncStages(0),
      R => '0'
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => oSyncStages(0),
      Q => oSyncStages(1),
      R => '0'
    );
ps2_data_clean_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB4000"
    )
        port map (
      I0 => \data_count_reg_0__s_net_1\,
      I1 => data_count_reg(0),
      I2 => data_inter,
      I3 => oSyncStages(1),
      I4 => ps2_data_clean,
      O => ps2_data_clean_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI is
  port (
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    lCtlSrst : out STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    a_SrstReg0 : out STD_LOGIC;
    p_3_in : out STD_LOGIC;
    \gpr1.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : out STD_LOGIC;
    PS2_interrupt : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_aclk : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lCtlStatusReg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_aresetn : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI : entity is "axi_ps2_v1_0_S_AXI";
end design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI;

architecture STRUCTURE of design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI is
  signal CtlSrstOut0 : STD_LOGIC;
  signal CtlSrstOut_i_2_n_0 : STD_LOGIC;
  signal CtlSrstOut_i_3_n_0 : STD_LOGIC;
  signal CtlSrstOut_i_4_n_0 : STD_LOGIC;
  signal CtlSrstOut_i_5_n_0 : STD_LOGIC;
  signal CtlSrstOut_i_6_n_0 : STD_LOGIC;
  signal CtlSrstOut_i_7_n_0 : STD_LOGIC;
  signal IsrBuffClr : STD_LOGIC;
  signal IsrBuffClr0 : STD_LOGIC;
  signal IsrBuffClr_i_2_n_0 : STD_LOGIC;
  signal PS2_interrupt_INST_0_i_1_n_0 : STD_LOGIC;
  signal PS2_interrupt_INST_0_i_2_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal SrstWriteTrig_i_1_n_0 : STD_LOGIC;
  signal SrstWriteTrig_i_2_n_0 : STD_LOGIC;
  signal SrstWriteTrig_reg_n_0 : STD_LOGIC;
  signal TxDataWriteTrig_i_1_n_0 : STD_LOGIC;
  signal \a_GieReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_GieReg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_GieReg[31]_i_1_n_0\ : STD_LOGIC;
  signal \a_GieReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[10]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[11]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[12]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[13]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[14]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[15]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[16]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[17]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[18]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[19]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[1]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[20]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[21]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[22]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[23]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[24]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[25]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[26]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[27]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[28]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[29]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[2]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[30]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[31]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[3]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[6]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[7]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[8]\ : STD_LOGIC;
  signal \a_GieReg_reg_n_0_[9]\ : STD_LOGIC;
  signal \a_IerReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_IerReg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_IerReg[31]_i_1_n_0\ : STD_LOGIC;
  signal \a_IerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[0]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[10]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[11]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[12]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[13]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[14]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[15]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[16]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[17]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[18]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[19]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[1]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[20]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[21]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[22]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[23]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[24]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[25]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[27]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[2]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[30]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[31]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[3]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[6]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[8]\ : STD_LOGIC;
  signal \a_IerReg_reg_n_0_[9]\ : STD_LOGIC;
  signal a_IsrBuffReg0 : STD_LOGIC;
  signal \a_IsrReg[30]_i_1_n_0\ : STD_LOGIC;
  signal a_SrstReg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^a_srstreg0\ : STD_LOGIC;
  signal \a_SrstReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_SrstReg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_SrstReg[31]_i_1_n_0\ : STD_LOGIC;
  signal \a_SrstReg[31]_i_2_n_0\ : STD_LOGIC;
  signal \a_SrstReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_TxDataReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \a_TxDataReg[23]_i_1_n_0\ : STD_LOGIC;
  signal \a_TxDataReg[31]_i_1_n_0\ : STD_LOGIC;
  signal \a_TxDataReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[10]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[11]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[12]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[13]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[14]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[15]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[16]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[17]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[18]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[19]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[20]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[21]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[22]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[23]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[24]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[25]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[26]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[27]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[28]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[29]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[30]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[31]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[8]\ : STD_LOGIC;
  signal \a_TxDataReg_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^gpr1.dout_i_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^lctlsrst\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 30 downto 26 );
  signal p_1_in10_in : STD_LOGIC;
  signal p_2_in2_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_in12_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_in14_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a_SrstReg[31]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_awaddr[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair29";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  S_AXI_arready <= \^s_axi_arready\;
  S_AXI_awready <= \^s_axi_awready\;
  S_AXI_bvalid <= \^s_axi_bvalid\;
  S_AXI_rvalid <= \^s_axi_rvalid\;
  S_AXI_wready <= \^s_axi_wready\;
  a_SrstReg0 <= \^a_srstreg0\;
  \gpr1.dout_i_reg[7]\(7 downto 0) <= \^gpr1.dout_i_reg[7]\(7 downto 0);
  lCtlSrst <= \^lctlsrst\;
CtlSrstOut_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => CtlSrstOut_i_2_n_0,
      I1 => CtlSrstOut_i_3_n_0,
      I2 => CtlSrstOut_i_4_n_0,
      I3 => CtlSrstOut_i_5_n_0,
      I4 => CtlSrstOut_i_6_n_0,
      I5 => CtlSrstOut_i_7_n_0,
      O => CtlSrstOut0
    );
CtlSrstOut_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a_SrstReg(22),
      I1 => a_SrstReg(23),
      I2 => a_SrstReg(20),
      I3 => a_SrstReg(21),
      I4 => a_SrstReg(25),
      I5 => a_SrstReg(24),
      O => CtlSrstOut_i_2_n_0
    );
CtlSrstOut_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a_SrstReg(28),
      I1 => a_SrstReg(29),
      I2 => a_SrstReg(26),
      I3 => a_SrstReg(27),
      I4 => a_SrstReg(31),
      I5 => a_SrstReg(30),
      O => CtlSrstOut_i_3_n_0
    );
CtlSrstOut_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a_SrstReg(0),
      I1 => a_SrstReg(1),
      I2 => SrstWriteTrig_reg_n_0,
      O => CtlSrstOut_i_4_n_0
    );
CtlSrstOut_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => a_SrstReg(4),
      I1 => a_SrstReg(5),
      I2 => a_SrstReg(3),
      I3 => a_SrstReg(2),
      I4 => a_SrstReg(7),
      I5 => a_SrstReg(6),
      O => CtlSrstOut_i_5_n_0
    );
CtlSrstOut_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a_SrstReg(16),
      I1 => a_SrstReg(17),
      I2 => a_SrstReg(14),
      I3 => a_SrstReg(15),
      I4 => a_SrstReg(19),
      I5 => a_SrstReg(18),
      O => CtlSrstOut_i_6_n_0
    );
CtlSrstOut_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => a_SrstReg(10),
      I1 => a_SrstReg(11),
      I2 => a_SrstReg(8),
      I3 => a_SrstReg(9),
      I4 => a_SrstReg(13),
      I5 => a_SrstReg(12),
      O => CtlSrstOut_i_7_n_0
    );
CtlSrstOut_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => CtlSrstOut0,
      Q => \^lctlsrst\,
      R => axi_awready_i_1_n_0
    );
\FSM_sequential_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^lctlsrst\,
      I1 => S_AXI_aresetn,
      O => \^a_srstreg0\
    );
IsrBuffClr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555400000000"
    )
        port map (
      I0 => \^a_srstreg0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(2),
      I5 => IsrBuffClr_i_2_n_0,
      O => IsrBuffClr0
    );
IsrBuffClr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \a_SrstReg[31]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => IsrBuffClr_i_2_n_0
    );
IsrBuffClr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => IsrBuffClr0,
      Q => IsrBuffClr,
      R => '0'
    );
PS2_interrupt_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \a_GieReg_reg_n_0_[0]\,
      I1 => p_0_in9_in,
      I2 => p_1_in10_in,
      I3 => PS2_interrupt_INST_0_i_1_n_0,
      O => PS2_interrupt
    );
PS2_interrupt_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAEAAAEAAAEAAA"
    )
        port map (
      I0 => PS2_interrupt_INST_0_i_2_n_0,
      I1 => p_2_in2_in,
      I2 => p_4_in12_in,
      I3 => \a_GieReg_reg_n_0_[0]\,
      I4 => \a_IerReg_reg_n_0_[27]\,
      I5 => p_0_in0_in,
      O => PS2_interrupt_INST_0_i_1_n_0
    );
PS2_interrupt_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => p_6_in14_in,
      I1 => p_4_in,
      I2 => \a_GieReg_reg_n_0_[0]\,
      I3 => \a_IerReg_reg_n_0_[30]\,
      I4 => p_6_in,
      O => PS2_interrupt_INST_0_i_2_n_0
    );
RxFIFO_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => axi_araddr(4),
      I1 => axi_araddr(3),
      I2 => axi_araddr(2),
      I3 => \^s_axi_rvalid\,
      O => rd_en
    );
SrstWriteTrig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => SrstWriteTrig_i_2_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => \a_SrstReg[31]_i_2_n_0\,
      I5 => \^a_srstreg0\,
      O => SrstWriteTrig_i_1_n_0
    );
SrstWriteTrig_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => S_AXI_wstrb(1),
      I1 => S_AXI_wstrb(0),
      I2 => S_AXI_wstrb(3),
      I3 => S_AXI_wstrb(2),
      O => SrstWriteTrig_i_2_n_0
    );
SrstWriteTrig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => SrstWriteTrig_i_1_n_0,
      Q => SrstWriteTrig_reg_n_0,
      R => '0'
    );
TxDataWriteTrig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => SrstWriteTrig_i_2_n_0,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => \a_SrstReg[31]_i_2_n_0\,
      I5 => \^a_srstreg0\,
      O => TxDataWriteTrig_i_1_n_0
    );
TxDataWriteTrig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => TxDataWriteTrig_i_1_n_0,
      Q => wr_en,
      R => '0'
    );
\a_GieReg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => \a_SrstReg[31]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(1),
      O => \a_GieReg[15]_i_1_n_0\
    );
\a_GieReg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => \a_SrstReg[31]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(2),
      O => \a_GieReg[23]_i_1_n_0\
    );
\a_GieReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => \a_SrstReg[31]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(3),
      O => \a_GieReg[31]_i_1_n_0\
    );
\a_GieReg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => \a_SrstReg[31]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(0),
      O => \a_GieReg[7]_i_1_n_0\
    );
\a_GieReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(0),
      Q => \a_GieReg_reg_n_0_[0]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(10),
      Q => \a_GieReg_reg_n_0_[10]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(11),
      Q => \a_GieReg_reg_n_0_[11]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(12),
      Q => \a_GieReg_reg_n_0_[12]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(13),
      Q => \a_GieReg_reg_n_0_[13]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(14),
      Q => \a_GieReg_reg_n_0_[14]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(15),
      Q => \a_GieReg_reg_n_0_[15]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(16),
      Q => \a_GieReg_reg_n_0_[16]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(17),
      Q => \a_GieReg_reg_n_0_[17]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(18),
      Q => \a_GieReg_reg_n_0_[18]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(19),
      Q => \a_GieReg_reg_n_0_[19]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(1),
      Q => \a_GieReg_reg_n_0_[1]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(20),
      Q => \a_GieReg_reg_n_0_[20]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(21),
      Q => \a_GieReg_reg_n_0_[21]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(22),
      Q => \a_GieReg_reg_n_0_[22]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[23]_i_1_n_0\,
      D => S_AXI_wdata(23),
      Q => \a_GieReg_reg_n_0_[23]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(24),
      Q => \a_GieReg_reg_n_0_[24]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(25),
      Q => \a_GieReg_reg_n_0_[25]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(26),
      Q => \a_GieReg_reg_n_0_[26]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(27),
      Q => \a_GieReg_reg_n_0_[27]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(28),
      Q => \a_GieReg_reg_n_0_[28]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(29),
      Q => \a_GieReg_reg_n_0_[29]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(2),
      Q => \a_GieReg_reg_n_0_[2]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(30),
      Q => \a_GieReg_reg_n_0_[30]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[31]_i_1_n_0\,
      D => S_AXI_wdata(31),
      Q => \a_GieReg_reg_n_0_[31]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(3),
      Q => \a_GieReg_reg_n_0_[3]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(4),
      Q => \a_GieReg_reg_n_0_[4]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(5),
      Q => \a_GieReg_reg_n_0_[5]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(6),
      Q => \a_GieReg_reg_n_0_[6]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[7]_i_1_n_0\,
      D => S_AXI_wdata(7),
      Q => \a_GieReg_reg_n_0_[7]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(8),
      Q => \a_GieReg_reg_n_0_[8]\,
      R => \^a_srstreg0\
    );
\a_GieReg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_GieReg[15]_i_1_n_0\,
      D => S_AXI_wdata(9),
      Q => \a_GieReg_reg_n_0_[9]\,
      R => \^a_srstreg0\
    );
\a_IerReg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_wstrb(1),
      O => \a_IerReg[15]_i_1_n_0\
    );
\a_IerReg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_wstrb(2),
      O => \a_IerReg[23]_i_1_n_0\
    );
\a_IerReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_wstrb(3),
      O => \a_IerReg[31]_i_1_n_0\
    );
\a_IerReg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => S_AXI_wstrb(0),
      O => \a_IerReg[7]_i_1_n_0\
    );
\a_IerReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(0),
      Q => \a_IerReg_reg_n_0_[0]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(10),
      Q => \a_IerReg_reg_n_0_[10]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(11),
      Q => \a_IerReg_reg_n_0_[11]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(12),
      Q => \a_IerReg_reg_n_0_[12]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(13),
      Q => \a_IerReg_reg_n_0_[13]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(14),
      Q => \a_IerReg_reg_n_0_[14]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(15),
      Q => \a_IerReg_reg_n_0_[15]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(16),
      Q => \a_IerReg_reg_n_0_[16]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(17),
      Q => \a_IerReg_reg_n_0_[17]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(18),
      Q => \a_IerReg_reg_n_0_[18]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(19),
      Q => \a_IerReg_reg_n_0_[19]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(1),
      Q => \a_IerReg_reg_n_0_[1]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(20),
      Q => \a_IerReg_reg_n_0_[20]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(21),
      Q => \a_IerReg_reg_n_0_[21]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(22),
      Q => \a_IerReg_reg_n_0_[22]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[23]_i_1_n_0\,
      D => S_AXI_wdata(23),
      Q => \a_IerReg_reg_n_0_[23]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(24),
      Q => \a_IerReg_reg_n_0_[24]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(25),
      Q => \a_IerReg_reg_n_0_[25]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(26),
      Q => p_0_in9_in,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(27),
      Q => \a_IerReg_reg_n_0_[27]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(28),
      Q => p_4_in12_in,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(29),
      Q => p_6_in14_in,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(2),
      Q => \a_IerReg_reg_n_0_[2]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(30),
      Q => \a_IerReg_reg_n_0_[30]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[31]_i_1_n_0\,
      D => S_AXI_wdata(31),
      Q => \a_IerReg_reg_n_0_[31]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(3),
      Q => \a_IerReg_reg_n_0_[3]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(4),
      Q => \a_IerReg_reg_n_0_[4]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(5),
      Q => \a_IerReg_reg_n_0_[5]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(6),
      Q => \a_IerReg_reg_n_0_[6]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[7]_i_1_n_0\,
      D => S_AXI_wdata(7),
      Q => \a_IerReg_reg_n_0_[7]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(8),
      Q => \a_IerReg_reg_n_0_[8]\,
      R => \^a_srstreg0\
    );
\a_IerReg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IerReg[15]_i_1_n_0\,
      D => S_AXI_wdata(9),
      Q => \a_IerReg_reg_n_0_[9]\,
      R => \^a_srstreg0\
    );
\a_IsrBuffReg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^a_srstreg0\,
      I1 => IsrBuffClr,
      O => a_IsrBuffReg0
    );
\a_IsrBuffReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => a_IsrBuffReg0
    );
\a_IsrBuffReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => a_IsrBuffReg0
    );
\a_IsrBuffReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => a_IsrBuffReg0
    );
\a_IsrBuffReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => a_IsrBuffReg0
    );
\a_IsrReg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45457545"
    )
        port map (
      I0 => lCtlStatusReg(3),
      I1 => IsrBuffClr_i_2_n_0,
      I2 => S_AXI_wstrb(3),
      I3 => p_1_in10_in,
      I4 => S_AXI_wdata(26),
      O => p_1_in(26)
    );
\a_IsrReg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF88"
    )
        port map (
      I0 => IsrBuffClr_i_2_n_0,
      I1 => \^q\(0),
      I2 => S_AXI_wdata(27),
      I3 => p_0_in0_in,
      O => p_1_in(27)
    );
\a_IsrReg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF88"
    )
        port map (
      I0 => IsrBuffClr_i_2_n_0,
      I1 => \^q\(1),
      I2 => S_AXI_wdata(28),
      I3 => p_2_in2_in,
      O => p_1_in(28)
    );
\a_IsrReg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF88"
    )
        port map (
      I0 => IsrBuffClr_i_2_n_0,
      I1 => \^q\(2),
      I2 => S_AXI_wdata(29),
      I3 => p_4_in,
      O => p_1_in(29)
    );
\a_IsrReg[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFF0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => S_AXI_wstrb(3),
      I5 => IsrBuffClr_i_2_n_0,
      O => \a_IsrReg[30]_i_1_n_0\
    );
\a_IsrReg[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AF88"
    )
        port map (
      I0 => IsrBuffClr_i_2_n_0,
      I1 => \^q\(3),
      I2 => S_AXI_wdata(30),
      I3 => p_6_in,
      O => p_1_in(30)
    );
\a_IsrReg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => p_1_in(26),
      Q => p_1_in10_in,
      R => \^a_srstreg0\
    );
\a_IsrReg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IsrReg[30]_i_1_n_0\,
      D => p_1_in(27),
      Q => p_0_in0_in,
      R => \^a_srstreg0\
    );
\a_IsrReg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IsrReg[30]_i_1_n_0\,
      D => p_1_in(28),
      Q => p_2_in2_in,
      R => \^a_srstreg0\
    );
\a_IsrReg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IsrReg[30]_i_1_n_0\,
      D => p_1_in(29),
      Q => p_4_in,
      R => \^a_srstreg0\
    );
\a_IsrReg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_IsrReg[30]_i_1_n_0\,
      D => p_1_in(30),
      Q => p_6_in,
      R => \^a_srstreg0\
    );
\a_SrstReg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(1),
      O => \a_SrstReg[15]_i_1_n_0\
    );
\a_SrstReg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(2),
      O => \a_SrstReg[23]_i_1_n_0\
    );
\a_SrstReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(3),
      O => \a_SrstReg[31]_i_1_n_0\
    );
\a_SrstReg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_wvalid,
      I3 => S_AXI_awvalid,
      O => \a_SrstReg[31]_i_2_n_0\
    );
\a_SrstReg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(0),
      O => \a_SrstReg[7]_i_1_n_0\
    );
\a_SrstReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(0),
      Q => a_SrstReg(0),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(10),
      Q => a_SrstReg(10),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(11),
      Q => a_SrstReg(11),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(12),
      Q => a_SrstReg(12),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(13),
      Q => a_SrstReg(13),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(14),
      Q => a_SrstReg(14),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(15),
      Q => a_SrstReg(15),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(16),
      Q => a_SrstReg(16),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(17),
      Q => a_SrstReg(17),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(18),
      Q => a_SrstReg(18),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(19),
      Q => a_SrstReg(19),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(1),
      Q => a_SrstReg(1),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(20),
      Q => a_SrstReg(20),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(21),
      Q => a_SrstReg(21),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(22),
      Q => a_SrstReg(22),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[23]_i_1_n_0\,
      D => S_AXI_wdata(23),
      Q => a_SrstReg(23),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(24),
      Q => a_SrstReg(24),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(25),
      Q => a_SrstReg(25),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(26),
      Q => a_SrstReg(26),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(27),
      Q => a_SrstReg(27),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(28),
      Q => a_SrstReg(28),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(29),
      Q => a_SrstReg(29),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(2),
      Q => a_SrstReg(2),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(30),
      Q => a_SrstReg(30),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[31]_i_1_n_0\,
      D => S_AXI_wdata(31),
      Q => a_SrstReg(31),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(3),
      Q => a_SrstReg(3),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(4),
      Q => a_SrstReg(4),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(5),
      Q => a_SrstReg(5),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(6),
      Q => a_SrstReg(6),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[7]_i_1_n_0\,
      D => S_AXI_wdata(7),
      Q => a_SrstReg(7),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(8),
      Q => a_SrstReg(8),
      R => \^a_srstreg0\
    );
\a_SrstReg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_SrstReg[15]_i_1_n_0\,
      D => S_AXI_wdata(9),
      Q => a_SrstReg(9),
      R => \^a_srstreg0\
    );
\a_TxDataReg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(1),
      O => \a_TxDataReg[15]_i_1_n_0\
    );
\a_TxDataReg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(2),
      O => \a_TxDataReg[23]_i_1_n_0\
    );
\a_TxDataReg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(3),
      O => \a_TxDataReg[31]_i_1_n_0\
    );
\a_TxDataReg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \a_SrstReg[31]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => S_AXI_wstrb(0),
      O => \a_TxDataReg[7]_i_1_n_0\
    );
\a_TxDataReg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(0),
      Q => \^gpr1.dout_i_reg[7]\(0),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(10),
      Q => \a_TxDataReg_reg_n_0_[10]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(11),
      Q => \a_TxDataReg_reg_n_0_[11]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(12),
      Q => \a_TxDataReg_reg_n_0_[12]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(13),
      Q => \a_TxDataReg_reg_n_0_[13]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(14),
      Q => \a_TxDataReg_reg_n_0_[14]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(15),
      Q => \a_TxDataReg_reg_n_0_[15]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(16),
      Q => \a_TxDataReg_reg_n_0_[16]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(17),
      Q => \a_TxDataReg_reg_n_0_[17]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(18),
      Q => \a_TxDataReg_reg_n_0_[18]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(19),
      Q => \a_TxDataReg_reg_n_0_[19]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(1),
      Q => \^gpr1.dout_i_reg[7]\(1),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(20),
      Q => \a_TxDataReg_reg_n_0_[20]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(21),
      Q => \a_TxDataReg_reg_n_0_[21]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(22),
      Q => \a_TxDataReg_reg_n_0_[22]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[23]_i_1_n_0\,
      D => S_AXI_wdata(23),
      Q => \a_TxDataReg_reg_n_0_[23]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(24),
      Q => \a_TxDataReg_reg_n_0_[24]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(25),
      Q => \a_TxDataReg_reg_n_0_[25]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(26),
      Q => \a_TxDataReg_reg_n_0_[26]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(27),
      Q => \a_TxDataReg_reg_n_0_[27]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(28),
      Q => \a_TxDataReg_reg_n_0_[28]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(29),
      Q => \a_TxDataReg_reg_n_0_[29]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(2),
      Q => \^gpr1.dout_i_reg[7]\(2),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(30),
      Q => \a_TxDataReg_reg_n_0_[30]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[31]_i_1_n_0\,
      D => S_AXI_wdata(31),
      Q => \a_TxDataReg_reg_n_0_[31]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(3),
      Q => \^gpr1.dout_i_reg[7]\(3),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(4),
      Q => \^gpr1.dout_i_reg[7]\(4),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(5),
      Q => \^gpr1.dout_i_reg[7]\(5),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(6),
      Q => \^gpr1.dout_i_reg[7]\(6),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[7]_i_1_n_0\,
      D => S_AXI_wdata(7),
      Q => \^gpr1.dout_i_reg[7]\(7),
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(8),
      Q => \a_TxDataReg_reg_n_0_[8]\,
      R => \^a_srstreg0\
    );
\a_TxDataReg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => \a_TxDataReg[15]_i_1_n_0\,
      D => S_AXI_wdata(9),
      Q => \a_TxDataReg_reg_n_0_[9]\,
      R => \^a_srstreg0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_araddr(0),
      I1 => S_AXI_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_araddr(1),
      I1 => S_AXI_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_araddr(2),
      I1 => S_AXI_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => axi_araddr(4),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_awaddr(0),
      I1 => S_AXI_wvalid,
      I2 => S_AXI_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_awaddr(1),
      I1 => S_AXI_wvalid,
      I2 => S_AXI_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_awaddr(2),
      I1 => S_AXI_wvalid,
      I2 => S_AXI_awvalid,
      I3 => \^s_axi_awready\,
      I4 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => S_AXI_awvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => S_AXI_bready,
      I1 => \^s_axi_bvalid\,
      I2 => S_AXI_awvalid,
      I3 => S_AXI_wvalid,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_wready\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[7]\(0),
      I1 => \a_GieReg_reg_n_0_[0]\,
      I2 => \a_IerReg_reg_n_0_[0]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0AACC"
    )
        port map (
      I0 => lCtlStatusReg(0),
      I1 => a_SrstReg(0),
      I2 => dout(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[10]_i_2_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(10),
      I1 => \a_TxDataReg_reg_n_0_[10]\,
      I2 => \a_GieReg_reg_n_0_[10]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[11]_i_2_n_0\,
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(11),
      I1 => \a_TxDataReg_reg_n_0_[11]\,
      I2 => \a_GieReg_reg_n_0_[11]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[12]_i_2_n_0\,
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(12),
      I1 => \a_TxDataReg_reg_n_0_[12]\,
      I2 => \a_GieReg_reg_n_0_[12]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[13]_i_2_n_0\,
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(13),
      I1 => \a_TxDataReg_reg_n_0_[13]\,
      I2 => \a_GieReg_reg_n_0_[13]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[14]_i_2_n_0\,
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(14),
      I1 => \a_TxDataReg_reg_n_0_[14]\,
      I2 => \a_GieReg_reg_n_0_[14]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[15]_i_2_n_0\,
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(15),
      I1 => \a_TxDataReg_reg_n_0_[15]\,
      I2 => \a_GieReg_reg_n_0_[15]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[16]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[16]_i_2_n_0\,
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(16),
      I1 => \a_TxDataReg_reg_n_0_[16]\,
      I2 => \a_GieReg_reg_n_0_[16]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[17]_i_2_n_0\,
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(17),
      I1 => \a_TxDataReg_reg_n_0_[17]\,
      I2 => \a_GieReg_reg_n_0_[17]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[18]_i_2_n_0\,
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(18),
      I1 => \a_TxDataReg_reg_n_0_[18]\,
      I2 => \a_GieReg_reg_n_0_[18]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[19]_i_2_n_0\,
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(19),
      I1 => \a_TxDataReg_reg_n_0_[19]\,
      I2 => \a_GieReg_reg_n_0_[19]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[7]\(1),
      I1 => \a_GieReg_reg_n_0_[1]\,
      I2 => \a_IerReg_reg_n_0_[1]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0AACC"
    )
        port map (
      I0 => lCtlStatusReg(1),
      I1 => a_SrstReg(1),
      I2 => dout(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[20]_i_2_n_0\,
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(20),
      I1 => \a_TxDataReg_reg_n_0_[20]\,
      I2 => \a_GieReg_reg_n_0_[20]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[21]_i_2_n_0\,
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(21),
      I1 => \a_TxDataReg_reg_n_0_[21]\,
      I2 => \a_GieReg_reg_n_0_[21]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[22]_i_2_n_0\,
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(22),
      I1 => \a_TxDataReg_reg_n_0_[22]\,
      I2 => \a_GieReg_reg_n_0_[22]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[23]_i_2_n_0\,
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(23),
      I1 => \a_TxDataReg_reg_n_0_[23]\,
      I2 => \a_GieReg_reg_n_0_[23]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[24]_i_2_n_0\,
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(24),
      I1 => \a_TxDataReg_reg_n_0_[24]\,
      I2 => \a_GieReg_reg_n_0_[24]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[25]_i_2_n_0\,
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(25),
      I1 => \a_TxDataReg_reg_n_0_[25]\,
      I2 => \a_GieReg_reg_n_0_[25]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => p_1_in10_in,
      I2 => p_0_in9_in,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(26),
      I1 => \a_TxDataReg_reg_n_0_[26]\,
      I2 => \a_GieReg_reg_n_0_[26]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => p_0_in0_in,
      I2 => \a_IerReg_reg_n_0_[27]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(27),
      I1 => \a_TxDataReg_reg_n_0_[27]\,
      I2 => \a_GieReg_reg_n_0_[27]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => p_2_in2_in,
      I2 => p_4_in12_in,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(28),
      I1 => \a_TxDataReg_reg_n_0_[28]\,
      I2 => \a_GieReg_reg_n_0_[28]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => p_4_in,
      I2 => p_6_in14_in,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(29),
      I1 => \a_TxDataReg_reg_n_0_[29]\,
      I2 => \a_GieReg_reg_n_0_[29]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[7]\(2),
      I1 => \a_GieReg_reg_n_0_[2]\,
      I2 => \a_IerReg_reg_n_0_[2]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0AACC"
    )
        port map (
      I0 => lCtlStatusReg(2),
      I1 => a_SrstReg(2),
      I2 => dout(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAEEAAAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => p_6_in,
      I2 => \a_IerReg_reg_n_0_[30]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(30),
      I1 => \a_TxDataReg_reg_n_0_[30]\,
      I2 => \a_GieReg_reg_n_0_[30]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_arvalid,
      I2 => \^s_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[31]_i_3_n_0\,
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(31),
      I1 => \a_TxDataReg_reg_n_0_[31]\,
      I2 => \a_GieReg_reg_n_0_[31]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CCAA000000"
    )
        port map (
      I0 => \^gpr1.dout_i_reg[7]\(3),
      I1 => \a_GieReg_reg_n_0_[3]\,
      I2 => \a_IerReg_reg_n_0_[3]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F0AACC"
    )
        port map (
      I0 => lCtlStatusReg(3),
      I1 => a_SrstReg(3),
      I2 => dout(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAEEAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \a_GieReg_reg_n_0_[4]\,
      I2 => \a_IerReg_reg_n_0_[4]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC000000AA"
    )
        port map (
      I0 => a_SrstReg(4),
      I1 => dout(4),
      I2 => \^gpr1.dout_i_reg[7]\(4),
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAEEAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \a_GieReg_reg_n_0_[5]\,
      I2 => \a_IerReg_reg_n_0_[5]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC000000AA"
    )
        port map (
      I0 => a_SrstReg(5),
      I1 => dout(5),
      I2 => \^gpr1.dout_i_reg[7]\(5),
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAEEAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \a_GieReg_reg_n_0_[6]\,
      I2 => \a_IerReg_reg_n_0_[6]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC000000AA"
    )
        port map (
      I0 => a_SrstReg(6),
      I1 => dout(6),
      I2 => \^gpr1.dout_i_reg[7]\(6),
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAAEEAAAAAAAA"
    )
        port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \a_GieReg_reg_n_0_[7]\,
      I2 => \a_IerReg_reg_n_0_[7]\,
      I3 => axi_araddr(2),
      I4 => axi_araddr(3),
      I5 => axi_araddr(4),
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F000CC000000AA"
    )
        port map (
      I0 => a_SrstReg(7),
      I1 => dout(7),
      I2 => \^gpr1.dout_i_reg[7]\(7),
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => axi_araddr(3),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[8]_i_2_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(8),
      I1 => \a_TxDataReg_reg_n_0_[8]\,
      I2 => \a_GieReg_reg_n_0_[8]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => \a_IerReg_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => axi_araddr(4),
      I4 => \axi_rdata[9]_i_2_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F0CC0000AA"
    )
        port map (
      I0 => a_SrstReg(9),
      I1 => \a_TxDataReg_reg_n_0_[9]\,
      I2 => \a_GieReg_reg_n_0_[9]\,
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => axi_araddr(4),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => S_AXI_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => S_AXI_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => S_AXI_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => S_AXI_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => S_AXI_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => S_AXI_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => S_AXI_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => S_AXI_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => S_AXI_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => S_AXI_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => S_AXI_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => S_AXI_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => S_AXI_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => S_AXI_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => S_AXI_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => S_AXI_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => S_AXI_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => S_AXI_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => S_AXI_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => S_AXI_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => S_AXI_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => S_AXI_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => S_AXI_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => S_AXI_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => S_AXI_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => S_AXI_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => S_AXI_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => S_AXI_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => S_AXI_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => S_AXI_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => S_AXI_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => S_AXI_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => S_AXI_rready,
      I1 => \^s_axi_rvalid\,
      I2 => S_AXI_arvalid,
      I3 => \^s_axi_arready\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_wvalid,
      I1 => S_AXI_awvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
load_rx_data_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_aresetn,
      I1 => \^lctlsrst\,
      O => p_3_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_dmem is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_dmem : entity is "dmem";
end design_1_axi_ps2_0_0_dmem;

architecture STRUCTURE of design_1_axi_ps2_0_0_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_7 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => count_d10_in(3 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
RAM_reg_0_15_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => count_d10_in(3 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(0),
      Q => Q(0),
      R => srst
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(1),
      Q => Q(1),
      R => srst
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(2),
      Q => Q(2),
      R => srst
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(3),
      Q => Q(3),
      R => srst
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(4),
      Q => Q(4),
      R => srst
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(5),
      Q => Q(5),
      R => srst
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(6),
      Q => Q(6),
      R => srst
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(7),
      Q => Q(7),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_dmem_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_dmem_7 : entity is "dmem";
end design_1_axi_ps2_0_0_dmem_7;

architecture STRUCTURE of design_1_axi_ps2_0_0_dmem_7 is
  signal p_0_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_7 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => count_d10_in(3 downto 0),
      DIA(1 downto 0) => din(1 downto 0),
      DIB(1 downto 0) => din(3 downto 2),
      DIC(1 downto 0) => din(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
RAM_reg_0_15_6_7: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => count_d10_in(3 downto 0),
      DIA(1 downto 0) => din(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => EN
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(0),
      Q => Q(0),
      R => srst
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(1),
      Q => Q(1),
      R => srst
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(2),
      Q => Q(2),
      R => srst
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(3),
      Q => Q(3),
      R => srst
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(4),
      Q => Q(4),
      R => srst
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(5),
      Q => Q(5),
      R => srst
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(6),
      Q => Q(6),
      R => srst
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_0_out(7),
      Q => Q(7),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end design_1_axi_ps2_0_0_rd_bin_cntr;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => \gpr1.dout_i_reg[1]\(0),
      R => srst
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => \gpr1.dout_i_reg[1]\(1),
      R => srst
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => \gpr1.dout_i_reg[1]\(2),
      R => srst
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => \gpr1.dout_i_reg[1]\(3),
      R => srst
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      Q => \^q\(0),
      S => srst
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(1),
      Q => \^q\(1),
      R => srst
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(2),
      Q => \^q\(2),
      R => srst
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(3),
      Q => \^q\(3),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_bin_cntr_12 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_bin_cntr_12 : entity is "rd_bin_cntr";
end design_1_axi_ps2_0_0_rd_bin_cntr_12;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_bin_cntr_12 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(0),
      Q => \gpr1.dout_i_reg[1]\(0),
      R => srst
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(1),
      Q => \gpr1.dout_i_reg[1]\(1),
      R => srst
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(2),
      Q => \gpr1.dout_i_reg[1]\(2),
      R => srst
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \^q\(3),
      Q => \gpr1.dout_i_reg[1]\(3),
      R => srst
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(0),
      Q => \^q\(0),
      S => srst
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(1),
      Q => \^q\(1),
      R => srst
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(2),
      Q => \^q\(2),
      R => srst
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => plusOp(3),
      Q => \^q\(3),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_fwft is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_fwft : entity is "rd_fwft";
end design_1_axi_ps2_0_0_rd_fwft;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal \aempty_fwft_i0__6\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \empty_fwft_i0__1\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  empty <= empty_fwft_i;
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFD8000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \out\,
      I2 => rd_en,
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => \aempty_fwft_i0__6\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__6\,
      Q => aempty_fwft_fb_i,
      S => srst
    );
aempty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__6\,
      Q => aempty_fwft_i,
      S => srst
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_i,
      O => \empty_fwft_i0__1\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_fb_i,
      S => srst
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => srst
    );
empty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_i,
      S => srst
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \out\,
      O => \gc0.count_reg[3]\(0)
    );
\goreg_dm.dout_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => \goreg_dm.dout_i_reg[7]\(0)
    );
\gpr1.dout_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      I3 => \out\,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => srst
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => srst
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_fwft_10 is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_fwft_10 : entity is "rd_fwft";
end design_1_axi_ps2_0_0_rd_fwft_10;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_fwft_10 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal \aempty_fwft_i0__6\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal \empty_fwft_i0__1\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  empty <= empty_fwft_i;
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEFD8000"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \out\,
      I2 => rd_en,
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => \aempty_fwft_i0__6\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__6\,
      Q => aempty_fwft_fb_i,
      S => srst
    );
aempty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aempty_fwft_i0__6\,
      Q => aempty_fwft_i,
      S => srst
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_i,
      O => \empty_fwft_i0__1\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_fb_i,
      S => srst
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F320"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => empty_fwft_fb_o_i,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => srst
    );
empty_fwft_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \empty_fwft_i0__1\,
      Q => empty_fwft_i,
      S => srst
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BF"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \out\,
      O => \gc0.count_reg[3]\(0)
    );
\goreg_dm.dout_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      O => \goreg_dm.dout_i_reg[7]\(0)
    );
\gpr1.dout_i[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => rd_en,
      I3 => \out\,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => rd_en,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => srst
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => srst
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    srst : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_status_flags_ss : entity is "rd_status_flags_ss";
end design_1_axi_ps2_0_0_rd_status_flags_ss;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_status_flags_ss is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_fb_i,
      S => srst
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_i,
      S => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_status_flags_ss_11 is
  port (
    \out\ : out STD_LOGIC;
    srst : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_status_flags_ss_11 : entity is "rd_status_flags_ss";
end design_1_axi_ps2_0_0_rd_status_flags_ss_11;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_status_flags_ss_11 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_fb_i,
      S => srst
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ram_empty_fb_i_reg_0,
      Q => ram_empty_i,
      S => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_bin_cntr is
  port (
    ram_full_i_reg : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end design_1_axi_ps2_0_0_wr_bin_cntr;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \gwss.wsts/comp1\ : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_5 : label is "soft_lutpair5";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(0),
      Q => \^q\(0),
      R => srst
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(1),
      Q => \^q\(1),
      R => srst
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(2),
      Q => \^q\(2),
      R => srst
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(3),
      Q => \^q\(3),
      R => srst
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => p_12_out(0),
      S => srst
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1),
      R => srst
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2),
      R => srst
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3),
      R => srst
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFC44FC"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => ram_empty_fb_i_reg,
      I2 => ram_empty_fb_i_i_2_n_0,
      I3 => wr_en,
      I4 => \out\,
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => ram_empty_fb_i_i_3_n_0,
      I1 => \^q\(2),
      I2 => \gc0.count_reg[3]\(2),
      I3 => \^q\(3),
      I4 => \gc0.count_reg[3]\(3),
      I5 => \gpregsm1.curr_fwft_state_reg[0]\(0),
      O => ram_empty_fb_i_i_2_n_0
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_reg[3]\(0),
      O => ram_empty_fb_i_i_3_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5500FFC0"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => wr_en,
      I2 => \gwss.wsts/comp1\,
      I3 => \out\,
      I4 => \gpregsm1.curr_fwft_state_reg[0]\(0),
      O => ram_full_i_reg
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_full_fb_i_i_4_n_0,
      O => \gwss.wsts/comp0\
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => p_12_out(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => p_12_out(2),
      I4 => ram_full_fb_i_i_5_n_0,
      O => \gwss.wsts/comp1\
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_4_n_0
    );
ram_full_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_12_out(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => p_12_out(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_bin_cntr_9 is
  port (
    ram_full_i_reg : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    lWrite_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC;
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_bin_cntr_9 : entity is "wr_bin_cntr";
end design_1_axi_ps2_0_0_wr_bin_cntr_9;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_bin_cntr_9 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \gwss.wsts/comp1\ : STD_LOGIC;
  signal p_12_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ram_empty_fb_i_i_2_n_0 : STD_LOGIC;
  signal ram_empty_fb_i_i_3_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_4_n_0 : STD_LOGIC;
  signal ram_full_fb_i_i_5_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ram_full_fb_i_i_5 : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_12_out(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => p_12_out(0),
      I1 => p_12_out(1),
      I2 => p_12_out(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => p_12_out(1),
      I1 => p_12_out(0),
      I2 => p_12_out(2),
      I3 => p_12_out(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(0),
      Q => \^q\(0),
      R => srst
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(1),
      Q => \^q\(1),
      R => srst
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(2),
      Q => \^q\(2),
      R => srst
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => p_12_out(3),
      Q => \^q\(3),
      R => srst
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => p_12_out(0),
      S => srst
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => p_12_out(1),
      R => srst
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => p_12_out(2),
      R => srst
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => p_12_out(3),
      R => srst
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFC44FC"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => ram_empty_fb_i_reg,
      I2 => ram_empty_fb_i_i_2_n_0,
      I3 => wr_en,
      I4 => \out\,
      O => ram_empty_i_reg
    );
ram_empty_fb_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4100004100000000"
    )
        port map (
      I0 => ram_empty_fb_i_i_3_n_0,
      I1 => \^q\(2),
      I2 => \gc0.count_reg[3]\(2),
      I3 => \^q\(3),
      I4 => \gc0.count_reg[3]\(3),
      I5 => lWrite_reg(0),
      O => ram_empty_fb_i_i_2_n_0
    );
ram_empty_fb_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_reg[3]\(0),
      O => ram_empty_fb_i_i_3_n_0
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5500FFC0"
    )
        port map (
      I0 => \gwss.wsts/comp0\,
      I1 => wr_en,
      I2 => \gwss.wsts/comp1\,
      I3 => \out\,
      I4 => lWrite_reg(0),
      O => ram_full_i_reg
    );
ram_full_fb_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => \^q\(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => \^q\(2),
      I4 => ram_full_fb_i_i_4_n_0,
      O => \gwss.wsts/comp0\
    );
ram_full_fb_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => \gc0.count_d1_reg[3]\(3),
      I1 => p_12_out(3),
      I2 => \gc0.count_d1_reg[3]\(2),
      I3 => p_12_out(2),
      I4 => ram_full_fb_i_i_5_n_0,
      O => \gwss.wsts/comp1\
    );
ram_full_fb_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => \^q\(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_4_n_0
    );
ram_full_fb_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => p_12_out(1),
      I1 => \gc0.count_d1_reg[3]\(1),
      I2 => p_12_out(0),
      I3 => \gc0.count_d1_reg[3]\(0),
      O => ram_full_fb_i_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_status_flags_ss is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    read_data_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_status_flags_ss : entity is "wr_status_flags_ss";
end design_1_axi_ps2_0_0_wr_status_flags_ss;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_status_flags_ss is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\gcc0.gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_data_reg,
      Q => ram_full_fb_i,
      R => srst
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_data_reg,
      Q => ram_full_i,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_status_flags_ss_8 is
  port (
    \out\ : out STD_LOGIC;
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    srst : in STD_LOGIC;
    TxDataWriteTrig_reg : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_status_flags_ss_8 : entity is "wr_status_flags_ss";
end design_1_axi_ps2_0_0_wr_status_flags_ss_8;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_status_flags_ss_8 is
  signal ram_afull_fb : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_afull_fb : signal is std.standard.true;
  signal ram_afull_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_afull_i : signal is std.standard.true;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\gcc0.gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_i
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => ram_afull_fb
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TxDataWriteTrig_reg,
      Q => ram_full_fb_i,
      R => srst
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TxDataWriteTrig_reg,
      Q => ram_full_i,
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_Ps2Interface is
  port (
    PS2_Data_T : out STD_LOGIC;
    PS2_Clk_T : out STD_LOGIC;
    lRead : out STD_LOGIC;
    lWrite_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_aclk : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    lCtlStatusReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a_SrstReg0 : in STD_LOGIC;
    \a_IsrBuffReg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_aresetn : in STD_LOGIC;
    lCtlSrst : in STD_LOGIC;
    PS2_Clk_I : in STD_LOGIC;
    PS2_Data_I : in STD_LOGIC;
    lWrite : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_Ps2Interface : entity is "Ps2Interface";
end design_1_axi_ps2_0_0_Ps2Interface;

architecture STRUCTURE of design_1_axi_ps2_0_0_Ps2Interface is
  signal CONV_INTEGER : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \^ps2_clk_t\ : STD_LOGIC;
  signal \^ps2_data_t\ : STD_LOGIC;
  signal SyncAsyncClk_n_0 : STD_LOGIC;
  signal SyncAsyncClk_n_1 : STD_LOGIC;
  signal SyncAsyncClk_n_2 : STD_LOGIC;
  signal SyncAsyncData_n_1 : STD_LOGIC;
  signal ack_i_1_n_0 : STD_LOGIC;
  signal \bit_count_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_count : STD_LOGIC;
  signal \clk_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \clk_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal clk_inter : STD_LOGIC;
  signal \data_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[6]_i_3_n_0\ : STD_LOGIC;
  signal data_count_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal data_inter : STD_LOGIC;
  signal data_inter0 : STD_LOGIC;
  signal \delay_100us_count[0]_i_10_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_8_n_0\ : STD_LOGIC;
  signal \delay_100us_count[0]_i_9_n_0\ : STD_LOGIC;
  signal \delay_100us_count[12]_i_2_n_0\ : STD_LOGIC;
  signal \delay_100us_count[12]_i_3_n_0\ : STD_LOGIC;
  signal \delay_100us_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay_100us_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \delay_100us_count[4]_i_4_n_0\ : STD_LOGIC;
  signal \delay_100us_count[4]_i_5_n_0\ : STD_LOGIC;
  signal \delay_100us_count[8]_i_2_n_0\ : STD_LOGIC;
  signal \delay_100us_count[8]_i_3_n_0\ : STD_LOGIC;
  signal \delay_100us_count[8]_i_4_n_0\ : STD_LOGIC;
  signal \delay_100us_count[8]_i_5_n_0\ : STD_LOGIC;
  signal delay_100us_count_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \delay_100us_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \delay_100us_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \delay_100us_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \delay_100us_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \delay_100us_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \delay_100us_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \delay_100us_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal delay_100us_done : STD_LOGIC;
  signal delay_100us_done_i_1_n_0 : STD_LOGIC;
  signal \delay_20us_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \delay_20us_count[10]_i_2_n_0\ : STD_LOGIC;
  signal \delay_20us_count[10]_i_4_n_0\ : STD_LOGIC;
  signal \delay_20us_count[10]_i_5_n_0\ : STD_LOGIC;
  signal \delay_20us_count[10]_i_6_n_0\ : STD_LOGIC;
  signal \delay_20us_count[10]_i_7_n_0\ : STD_LOGIC;
  signal \delay_20us_count[9]_i_2_n_0\ : STD_LOGIC;
  signal \delay_20us_count_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal delay_20us_done : STD_LOGIC;
  signal delay_20us_done_i_1_n_0 : STD_LOGIC;
  signal \delay_63clk_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_63clk_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \delay_63clk_count[6]_i_4_n_0\ : STD_LOGIC;
  signal \delay_63clk_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal delay_63clk_done : STD_LOGIC;
  signal delay_63clk_done_i_1_n_0 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal eqOp_0 : STD_LOGIC;
  signal err_nack_i_1_n_0 : STD_LOGIC;
  signal err_par_i_1_n_0 : STD_LOGIC;
  signal \frame[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame[10]_i_1_n_0\ : STD_LOGIC;
  signal \frame[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame[5]_i_1_n_0\ : STD_LOGIC;
  signal \frame[6]_i_1_n_0\ : STD_LOGIC;
  signal \frame[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame[9]_i_1_n_0\ : STD_LOGIC;
  signal \frame[9]_i_2_n_0\ : STD_LOGIC;
  signal \frame_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame_reg_n_0_[10]\ : STD_LOGIC;
  signal \frame_reg_n_0_[9]\ : STD_LOGIC;
  signal lCtlIsrBitRxErr : STD_LOGIC;
  signal lCtlIsrBitTxAck : STD_LOGIC;
  signal lCtlIsrBitTxNoAck : STD_LOGIC;
  signal \^lread\ : STD_LOGIC;
  signal load_rx_data : STD_LOGIC;
  signal load_rx_data_i_1_n_0 : STD_LOGIC;
  signal load_rx_data_i_3_n_0 : STD_LOGIC;
  signal load_rx_data_i_4_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal ps2_clk_clean : STD_LOGIC;
  signal ps2_clk_clean_i_2_n_0 : STD_LOGIC;
  signal ps2_clk_h : STD_LOGIC;
  signal ps2_clk_h_i_1_n_0 : STD_LOGIC;
  signal ps2_clk_h_i_3_n_0 : STD_LOGIC;
  signal ps2_clk_s : STD_LOGIC;
  signal ps2_data : STD_LOGIC;
  signal ps2_data_clean : STD_LOGIC;
  signal ps2_data_clean_i_2_n_0 : STD_LOGIC;
  signal ps2_data_h_i_1_n_0 : STD_LOGIC;
  signal ps2_data_h_i_2_n_0 : STD_LOGIC;
  signal ps2_data_h_i_3_n_0 : STD_LOGIC;
  signal ps2_data_h_i_4_n_0 : STD_LOGIC;
  signal ps2_data_s : STD_LOGIC;
  signal read_data_i_1_n_0 : STD_LOGIC;
  signal read_data_i_2_n_0 : STD_LOGIC;
  signal reset_bit_count : STD_LOGIC;
  signal reset_flag : STD_LOGIC;
  signal reset_flag_i_1_n_0 : STD_LOGIC;
  signal reset_flag_reg_n_0 : STD_LOGIC;
  signal rx_parity : STD_LOGIC;
  signal rx_parity_i_1_n_0 : STD_LOGIC;
  signal rx_parity_i_2_n_0 : STD_LOGIC;
  signal shift_frame : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state : signal is "yes";
  signal tx_parity : STD_LOGIC;
  signal tx_parity_i_1_n_0 : STD_LOGIC;
  signal tx_parity_i_2_n_0 : STD_LOGIC;
  signal \NLW_delay_100us_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_100us_count_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[4]_i_5\ : label is "soft_lutpair9";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg[4]\ : label is "yes";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_count[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_count[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \clk_count[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \clk_count[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clk_count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_count[6]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_count[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_count[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \data_count[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_count[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_count[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_count[6]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \delay_20us_count[10]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_20us_count[10]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_20us_count[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \delay_20us_count[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_20us_count[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \delay_20us_count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_20us_count[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \delay_20us_count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_20us_count[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_20us_count[9]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_63clk_count[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \delay_63clk_count[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \delay_63clk_count[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \delay_63clk_count[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_63clk_count[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_63clk_count[6]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frame[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \frame[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \frame[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \frame[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \frame[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \frame[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \frame[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \frame[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \frame[9]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ps2_data_h_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of rx_parity_i_2 : label is "soft_lutpair14";
begin
  PS2_Clk_T <= \^ps2_clk_t\;
  PS2_Data_T <= \^ps2_data_t\;
  lRead <= \^lread\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE222E2"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => state(2),
      I2 => \FSM_sequential_state[0]_i_3_n_0\,
      I3 => state(3),
      I4 => \FSM_sequential_state[0]_i_4_n_0\,
      I5 => state(4),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC0DFFFFEC0D0000"
    )
        port map (
      I0 => ps2_data_s,
      I1 => state(0),
      I2 => state(1),
      I3 => ps2_clk_s,
      I4 => state(3),
      I5 => \FSM_sequential_state[0]_i_5_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5050E5E0"
    )
        port map (
      I0 => state(0),
      I1 => ps2_data_h_i_4_n_0,
      I2 => state(1),
      I3 => delay_63clk_done,
      I4 => ps2_clk_s,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC77"
    )
        port map (
      I0 => ps2_clk_s,
      I1 => state(0),
      I2 => \FSM_sequential_state[0]_i_6_n_0\,
      I3 => state(1),
      O => \FSM_sequential_state[0]_i_4_n_0\
    );
\FSM_sequential_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF5500CFFFCFFF"
    )
        port map (
      I0 => ps2_clk_s,
      I1 => reset_flag_reg_n_0,
      I2 => delay_100us_done,
      I3 => state(0),
      I4 => delay_20us_done,
      I5 => state(1),
      O => \FSM_sequential_state[0]_i_5_n_0\
    );
\FSM_sequential_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0060000000000000"
    )
        port map (
      I0 => \frame_reg_n_0_[9]\,
      I1 => rx_parity,
      I2 => \bit_count_reg__0\(3),
      I3 => \bit_count_reg__0\(2),
      I4 => \bit_count_reg__0\(0),
      I5 => \bit_count_reg__0\(1),
      O => \FSM_sequential_state[0]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state(4),
      I2 => \FSM_sequential_state_reg[1]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8BBBBBBB888888"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_7_n_0\,
      I1 => state(3),
      I2 => ps2_clk_s,
      I3 => delay_100us_done,
      I4 => state(0),
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"73AA"
    )
        port map (
      I0 => state(0),
      I1 => ps2_clk_s,
      I2 => ps2_data_h_i_4_n_0,
      I3 => state(1),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFBAEEAAAAA0000"
    )
        port map (
      I0 => state(0),
      I1 => eqOp_0,
      I2 => rx_parity,
      I3 => \frame_reg_n_0_[9]\,
      I4 => ps2_clk_s,
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FFA00A"
    )
        port map (
      I0 => ps2_data_s,
      I1 => lWrite,
      I2 => ps2_clk_s,
      I3 => state(0),
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \bit_count_reg__0\(1),
      I1 => \bit_count_reg__0\(0),
      I2 => \bit_count_reg__0\(2),
      I3 => \bit_count_reg__0\(3),
      O => eqOp_0
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8888888888888"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => ps2_clk_s,
      I4 => state(1),
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => ps2_clk_s,
      I3 => state(0),
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07370437FFFFFFFF"
    )
        port map (
      I0 => load_rx_data_i_4_n_0,
      I1 => state(3),
      I2 => state(0),
      I3 => ps2_clk_s,
      I4 => ps2_data_h_i_4_n_0,
      I5 => state(1),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFEF0000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      I4 => state(4),
      I5 => \FSM_sequential_state_reg[3]_i_2_n_0\,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF7FFF0000"
    )
        port map (
      I0 => lWrite,
      I1 => ps2_clk_s,
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      I5 => \FSM_sequential_state[3]_i_5_n_0\,
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCCC44CC"
    )
        port map (
      I0 => load_rx_data_i_4_n_0,
      I1 => state(3),
      I2 => ps2_clk_s,
      I3 => state(1),
      I4 => state(0),
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => state(1),
      I1 => reset_flag_reg_n_0,
      I2 => delay_100us_done,
      I3 => state(0),
      O => \FSM_sequential_state[3]_i_5_n_0\
    );
\FSM_sequential_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5040004000000000"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[4]_i_5_n_0\,
      I2 => state(1),
      I3 => state(3),
      I4 => load_rx_data_i_4_n_0,
      I5 => state(2),
      O => \FSM_sequential_state[4]_i_3_n_0\
    );
\FSM_sequential_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => ps2_clk_s,
      I3 => state(0),
      I4 => state(2),
      O => \FSM_sequential_state[4]_i_4_n_0\
    );
\FSM_sequential_state[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => ps2_clk_s,
      I1 => \bit_count_reg__0\(0),
      I2 => \bit_count_reg__0\(1),
      I3 => \bit_count_reg__0\(3),
      I4 => \bit_count_reg__0\(2),
      O => \FSM_sequential_state[4]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      CLR => a_SrstReg0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      CLR => a_SrstReg0,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => \FSM_sequential_state[1]_i_6_n_0\,
      O => \FSM_sequential_state_reg[1]_i_3_n_0\,
      S => state(3)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      CLR => a_SrstReg0,
      D => \FSM_sequential_state_reg[2]_i_1_n_0\,
      Q => state(2)
    );
\FSM_sequential_state_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \FSM_sequential_state_reg[2]_i_1_n_0\,
      S => state(4)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      CLR => a_SrstReg0,
      D => \FSM_sequential_state[3]_i_1_n_0\,
      Q => state(3)
    );
\FSM_sequential_state_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_4_n_0\,
      O => \FSM_sequential_state_reg[3]_i_2_n_0\,
      S => state(2)
    );
\FSM_sequential_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      CLR => a_SrstReg0,
      D => \FSM_sequential_state_reg[4]_i_1_n_0\,
      Q => state(4)
    );
\FSM_sequential_state_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \FSM_sequential_state[4]_i_3_n_0\,
      I1 => \FSM_sequential_state[4]_i_4_n_0\,
      O => \FSM_sequential_state_reg[4]_i_1_n_0\,
      S => state(4)
    );
SyncAsyncClk: entity work.design_1_axi_ps2_0_0_SyncAsync
     port map (
      PS2_Clk_I => PS2_Clk_I,
      Q(0) => \clk_count_reg__0\(6),
      SR(0) => SyncAsyncClk_n_2,
      S_AXI_aclk => S_AXI_aclk,
      \clk_count_reg[5]\ => ps2_clk_clean_i_2_n_0,
      clk_inter => clk_inter,
      clk_inter_reg => SyncAsyncClk_n_1,
      ps2_clk_clean => ps2_clk_clean,
      ps2_clk_clean_reg => SyncAsyncClk_n_0,
      reset_flag_reg => reset_flag_reg_n_0
    );
SyncAsyncData: entity work.design_1_axi_ps2_0_0_SyncAsync_0
     port map (
      PS2_Data_I => PS2_Data_I,
      S_AXI_aclk => S_AXI_aclk,
      data_count_reg(0) => data_count_reg(6),
      \data_count_reg_0__s_port_]\ => ps2_data_clean_i_2_n_0,
      data_inter => data_inter,
      data_inter0 => data_inter0,
      \out\(0) => ps2_data,
      ps2_data_clean => ps2_data_clean,
      ps2_data_clean_reg => SyncAsyncData_n_1
    );
\a_IsrBuffReg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lCtlIsrBitRxErr,
      I1 => \a_IsrBuffReg_reg[3]\(0),
      O => D(0)
    );
\a_IsrBuffReg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => lCtlStatusReg(1),
      I1 => \^lread\,
      I2 => \a_IsrBuffReg_reg[3]\(1),
      O => D(1)
    );
\a_IsrBuffReg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lCtlIsrBitTxAck,
      I1 => \a_IsrBuffReg_reg[3]\(2),
      O => D(2)
    );
\a_IsrBuffReg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => lCtlIsrBitTxAck,
      I1 => \^lread\,
      I2 => lCtlStatusReg(1),
      I3 => lCtlIsrBitTxNoAck,
      I4 => lCtlIsrBitRxErr,
      O => E(0)
    );
\a_IsrBuffReg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => lCtlIsrBitTxNoAck,
      I1 => \a_IsrBuffReg_reg[3]\(3),
      O => D(3)
    );
ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => ps2_data_s,
      I3 => ps2_clk_s,
      I4 => state(0),
      I5 => state(2),
      O => ack_i_1_n_0
    );
ack_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => p_3_in,
      D => ack_i_1_n_0,
      Q => lCtlIsrBitTxAck,
      R => load_rx_data_i_1_n_0
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_count_reg__0\(0),
      O => \plusOp__0\(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \bit_count_reg__0\(0),
      I1 => \bit_count_reg__0\(1),
      O => \plusOp__0\(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bit_count_reg__0\(2),
      I1 => \bit_count_reg__0\(1),
      I2 => \bit_count_reg__0\(0),
      O => \plusOp__0\(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(4),
      O => reset_bit_count
    );
\bit_count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01040000"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      O => shift_frame
    );
\bit_count[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bit_count_reg__0\(3),
      I1 => \bit_count_reg__0\(0),
      I2 => \bit_count_reg__0\(1),
      I3 => \bit_count_reg__0\(2),
      O => \plusOp__0\(3)
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => shift_frame,
      D => \plusOp__0\(0),
      Q => \bit_count_reg__0\(0),
      R => reset_bit_count
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => shift_frame,
      D => \plusOp__0\(1),
      Q => \bit_count_reg__0\(1),
      R => reset_bit_count
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => shift_frame,
      D => \plusOp__0\(2),
      Q => \bit_count_reg__0\(2),
      R => reset_bit_count
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => shift_frame,
      D => \plusOp__0\(3),
      Q => \bit_count_reg__0\(3),
      R => reset_bit_count
    );
\clk_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_count_reg__0\(0),
      O => plusOp(0)
    );
\clk_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_count_reg__0\(0),
      I1 => \clk_count_reg__0\(1),
      O => plusOp(1)
    );
\clk_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \clk_count_reg__0\(2),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(1),
      O => plusOp(2)
    );
\clk_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_count_reg__0\(1),
      I1 => \clk_count_reg__0\(0),
      I2 => \clk_count_reg__0\(2),
      I3 => \clk_count_reg__0\(3),
      O => plusOp(3)
    );
\clk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \clk_count_reg__0\(4),
      I1 => \clk_count_reg__0\(1),
      I2 => \clk_count_reg__0\(0),
      I3 => \clk_count_reg__0\(2),
      I4 => \clk_count_reg__0\(3),
      O => plusOp(4)
    );
\clk_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \clk_count_reg__0\(5),
      I1 => \clk_count_reg__0\(3),
      I2 => \clk_count_reg__0\(2),
      I3 => \clk_count_reg__0\(0),
      I4 => \clk_count_reg__0\(1),
      I5 => \clk_count_reg__0\(4),
      O => plusOp(5)
    );
\clk_count[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => reset_flag_reg_n_0,
      I1 => \clk_count_reg__0\(5),
      I2 => \clk_count[6]_i_4_n_0\,
      I3 => \clk_count_reg__0\(4),
      I4 => \clk_count_reg__0\(6),
      O => clk_count
    );
\clk_count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \clk_count_reg__0\(6),
      I1 => \clk_count_reg__0\(4),
      I2 => \clk_count[6]_i_4_n_0\,
      I3 => \clk_count_reg__0\(5),
      O => plusOp(6)
    );
\clk_count[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \clk_count_reg__0\(3),
      I1 => \clk_count_reg__0\(2),
      I2 => \clk_count_reg__0\(0),
      I3 => \clk_count_reg__0\(1),
      O => \clk_count[6]_i_4_n_0\
    );
\clk_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(0),
      Q => \clk_count_reg__0\(0),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(1),
      Q => \clk_count_reg__0\(1),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(2),
      Q => \clk_count_reg__0\(2),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(3),
      Q => \clk_count_reg__0\(3),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(4),
      Q => \clk_count_reg__0\(4),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(5),
      Q => \clk_count_reg__0\(5),
      R => SyncAsyncClk_n_2
    );
\clk_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => clk_count,
      D => plusOp(6),
      Q => \clk_count_reg__0\(6),
      R => SyncAsyncClk_n_2
    );
clk_inter_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => SyncAsyncClk_n_1,
      Q => clk_inter,
      R => '0'
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => \data_count[4]_i_2_n_0\,
      O => \data_count[0]_i_1_n_0\
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      I2 => \data_count[4]_i_2_n_0\,
      O => \data_count[1]_i_1_n_0\
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78FF"
    )
        port map (
      I0 => data_count_reg(1),
      I1 => data_count_reg(0),
      I2 => data_count_reg(2),
      I3 => \data_count[4]_i_2_n_0\,
      O => \data_count[2]_i_1_n_0\
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FFFF"
    )
        port map (
      I0 => data_count_reg(2),
      I1 => data_count_reg(0),
      I2 => data_count_reg(1),
      I3 => data_count_reg(3),
      I4 => \data_count[4]_i_2_n_0\,
      O => \data_count[3]_i_1_n_0\
    );
\data_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FFFFFFFF"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      I2 => data_count_reg(3),
      I3 => data_count_reg(2),
      I4 => data_count_reg(4),
      I5 => \data_count[4]_i_2_n_0\,
      O => \data_count[4]_i_1_n_0\
    );
\data_count[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \data_count[6]_i_3_n_0\,
      I1 => data_count_reg(4),
      I2 => data_count_reg(6),
      I3 => data_count_reg(5),
      O => \data_count[4]_i_2_n_0\
    );
\data_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DAAA"
    )
        port map (
      I0 => data_count_reg(5),
      I1 => data_count_reg(6),
      I2 => data_count_reg(4),
      I3 => \data_count[6]_i_3_n_0\,
      O => \data_count[5]_i_1_n_0\
    );
\data_count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => data_count_reg(6),
      I1 => data_count_reg(5),
      I2 => data_count_reg(4),
      I3 => \data_count[6]_i_3_n_0\,
      O => \data_count[6]_i_2_n_0\
    );
\data_count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      I2 => data_count_reg(3),
      I3 => data_count_reg(2),
      O => \data_count[6]_i_3_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[0]_i_1_n_0\,
      Q => data_count_reg(0),
      R => data_inter0
    );
\data_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[1]_i_1_n_0\,
      Q => data_count_reg(1),
      R => data_inter0
    );
\data_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[2]_i_1_n_0\,
      Q => data_count_reg(2),
      R => data_inter0
    );
\data_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[3]_i_1_n_0\,
      Q => data_count_reg(3),
      R => data_inter0
    );
\data_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[4]_i_1_n_0\,
      Q => data_count_reg(4),
      R => data_inter0
    );
\data_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[5]_i_1_n_0\,
      Q => data_count_reg(5),
      R => data_inter0
    );
\data_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \data_count[6]_i_2_n_0\,
      Q => data_count_reg(6),
      R => data_inter0
    );
data_inter_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => ps2_data,
      Q => data_inter,
      R => '0'
    );
\delay_100us_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => state(3),
      O => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => delay_100us_count_reg(2),
      I1 => delay_100us_count_reg(3),
      I2 => delay_100us_count_reg(9),
      I3 => delay_100us_count_reg(6),
      O => \delay_100us_count[0]_i_10_n_0\
    );
\delay_100us_count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => eqOp,
      O => \delay_100us_count[0]_i_2_n_0\
    );
\delay_100us_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \delay_100us_count[0]_i_9_n_0\,
      I1 => \delay_100us_count[0]_i_10_n_0\,
      I2 => delay_100us_count_reg(4),
      I3 => delay_100us_count_reg(5),
      I4 => delay_100us_count_reg(8),
      I5 => delay_100us_count_reg(12),
      O => eqOp
    );
\delay_100us_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(3),
      O => \delay_100us_count[0]_i_5_n_0\
    );
\delay_100us_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(2),
      O => \delay_100us_count[0]_i_6_n_0\
    );
\delay_100us_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(1),
      O => \delay_100us_count[0]_i_7_n_0\
    );
\delay_100us_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_100us_count_reg(0),
      O => \delay_100us_count[0]_i_8_n_0\
    );
\delay_100us_count[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => delay_100us_count_reg(7),
      I1 => delay_100us_count_reg(11),
      I2 => delay_100us_count_reg(0),
      I3 => delay_100us_count_reg(13),
      I4 => delay_100us_count_reg(1),
      I5 => delay_100us_count_reg(10),
      O => \delay_100us_count[0]_i_9_n_0\
    );
\delay_100us_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(13),
      O => \delay_100us_count[12]_i_2_n_0\
    );
\delay_100us_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(12),
      O => \delay_100us_count[12]_i_3_n_0\
    );
\delay_100us_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(7),
      O => \delay_100us_count[4]_i_2_n_0\
    );
\delay_100us_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(6),
      O => \delay_100us_count[4]_i_3_n_0\
    );
\delay_100us_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(5),
      O => \delay_100us_count[4]_i_4_n_0\
    );
\delay_100us_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(4),
      O => \delay_100us_count[4]_i_5_n_0\
    );
\delay_100us_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(11),
      O => \delay_100us_count[8]_i_2_n_0\
    );
\delay_100us_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(10),
      O => \delay_100us_count[8]_i_3_n_0\
    );
\delay_100us_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(9),
      O => \delay_100us_count[8]_i_4_n_0\
    );
\delay_100us_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => delay_100us_count_reg(8),
      O => \delay_100us_count[8]_i_5_n_0\
    );
\delay_100us_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[0]_i_3_n_7\,
      Q => delay_100us_count_reg(0),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delay_100us_count_reg[0]_i_3_n_0\,
      CO(2) => \delay_100us_count_reg[0]_i_3_n_1\,
      CO(1) => \delay_100us_count_reg[0]_i_3_n_2\,
      CO(0) => \delay_100us_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \delay_100us_count_reg[0]_i_3_n_4\,
      O(2) => \delay_100us_count_reg[0]_i_3_n_5\,
      O(1) => \delay_100us_count_reg[0]_i_3_n_6\,
      O(0) => \delay_100us_count_reg[0]_i_3_n_7\,
      S(3) => \delay_100us_count[0]_i_5_n_0\,
      S(2) => \delay_100us_count[0]_i_6_n_0\,
      S(1) => \delay_100us_count[0]_i_7_n_0\,
      S(0) => \delay_100us_count[0]_i_8_n_0\
    );
\delay_100us_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[8]_i_1_n_5\,
      Q => delay_100us_count_reg(10),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[8]_i_1_n_4\,
      Q => delay_100us_count_reg(11),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[12]_i_1_n_7\,
      Q => delay_100us_count_reg(12),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_100us_count_reg[8]_i_1_n_0\,
      CO(3 downto 1) => \NLW_delay_100us_count_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \delay_100us_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_delay_100us_count_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \delay_100us_count_reg[12]_i_1_n_6\,
      O(0) => \delay_100us_count_reg[12]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \delay_100us_count[12]_i_2_n_0\,
      S(0) => \delay_100us_count[12]_i_3_n_0\
    );
\delay_100us_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[12]_i_1_n_6\,
      Q => delay_100us_count_reg(13),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[0]_i_3_n_6\,
      Q => delay_100us_count_reg(1),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[0]_i_3_n_5\,
      Q => delay_100us_count_reg(2),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[0]_i_3_n_4\,
      Q => delay_100us_count_reg(3),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[4]_i_1_n_7\,
      Q => delay_100us_count_reg(4),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_100us_count_reg[0]_i_3_n_0\,
      CO(3) => \delay_100us_count_reg[4]_i_1_n_0\,
      CO(2) => \delay_100us_count_reg[4]_i_1_n_1\,
      CO(1) => \delay_100us_count_reg[4]_i_1_n_2\,
      CO(0) => \delay_100us_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_100us_count_reg[4]_i_1_n_4\,
      O(2) => \delay_100us_count_reg[4]_i_1_n_5\,
      O(1) => \delay_100us_count_reg[4]_i_1_n_6\,
      O(0) => \delay_100us_count_reg[4]_i_1_n_7\,
      S(3) => \delay_100us_count[4]_i_2_n_0\,
      S(2) => \delay_100us_count[4]_i_3_n_0\,
      S(1) => \delay_100us_count[4]_i_4_n_0\,
      S(0) => \delay_100us_count[4]_i_5_n_0\
    );
\delay_100us_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[4]_i_1_n_6\,
      Q => delay_100us_count_reg(5),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[4]_i_1_n_5\,
      Q => delay_100us_count_reg(6),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[4]_i_1_n_4\,
      Q => delay_100us_count_reg(7),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[8]_i_1_n_7\,
      Q => delay_100us_count_reg(8),
      R => \delay_100us_count[0]_i_1_n_0\
    );
\delay_100us_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_100us_count_reg[4]_i_1_n_0\,
      CO(3) => \delay_100us_count_reg[8]_i_1_n_0\,
      CO(2) => \delay_100us_count_reg[8]_i_1_n_1\,
      CO(1) => \delay_100us_count_reg[8]_i_1_n_2\,
      CO(0) => \delay_100us_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \delay_100us_count_reg[8]_i_1_n_4\,
      O(2) => \delay_100us_count_reg[8]_i_1_n_5\,
      O(1) => \delay_100us_count_reg[8]_i_1_n_6\,
      O(0) => \delay_100us_count_reg[8]_i_1_n_7\,
      S(3) => \delay_100us_count[8]_i_2_n_0\,
      S(2) => \delay_100us_count[8]_i_3_n_0\,
      S(1) => \delay_100us_count[8]_i_4_n_0\,
      S(0) => \delay_100us_count[8]_i_5_n_0\
    );
\delay_100us_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_100us_count[0]_i_2_n_0\,
      D => \delay_100us_count_reg[8]_i_1_n_6\,
      Q => delay_100us_count_reg(9),
      R => \delay_100us_count[0]_i_1_n_0\
    );
delay_100us_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => eqOp,
      I1 => state(3),
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      I5 => state(4),
      O => delay_100us_done_i_1_n_0
    );
delay_100us_done_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => delay_100us_done_i_1_n_0,
      Q => delay_100us_done,
      R => '0'
    );
\delay_20us_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(0),
      O => \plusOp__1\(0)
    );
\delay_20us_count[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => state(3),
      O => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_20us_count[10]_i_4_n_0\,
      O => \delay_20us_count[10]_i_2_n_0\
    );
\delay_20us_count[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(10),
      I1 => \delay_20us_count[10]_i_5_n_0\,
      I2 => \delay_20us_count_reg__0\(8),
      I3 => \delay_20us_count_reg__0\(7),
      I4 => \delay_20us_count_reg__0\(9),
      O => \plusOp__1\(10)
    );
\delay_20us_count[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(3),
      I1 => \delay_20us_count_reg__0\(6),
      I2 => \delay_20us_count_reg__0\(4),
      I3 => \delay_20us_count[10]_i_6_n_0\,
      I4 => \delay_20us_count[10]_i_7_n_0\,
      O => \delay_20us_count[10]_i_4_n_0\
    );
\delay_20us_count[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(6),
      I1 => \delay_20us_count[9]_i_2_n_0\,
      I2 => \delay_20us_count_reg__0\(5),
      O => \delay_20us_count[10]_i_5_n_0\
    );
\delay_20us_count[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(1),
      I1 => \delay_20us_count_reg__0\(0),
      I2 => \delay_20us_count_reg__0\(8),
      I3 => \delay_20us_count_reg__0\(7),
      O => \delay_20us_count[10]_i_6_n_0\
    );
\delay_20us_count[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(10),
      I1 => \delay_20us_count_reg__0\(9),
      I2 => \delay_20us_count_reg__0\(5),
      I3 => \delay_20us_count_reg__0\(2),
      O => \delay_20us_count[10]_i_7_n_0\
    );
\delay_20us_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(0),
      I1 => \delay_20us_count_reg__0\(1),
      O => \plusOp__1\(1)
    );
\delay_20us_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(2),
      I1 => \delay_20us_count_reg__0\(0),
      I2 => \delay_20us_count_reg__0\(1),
      O => \plusOp__1\(2)
    );
\delay_20us_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(3),
      I1 => \delay_20us_count_reg__0\(1),
      I2 => \delay_20us_count_reg__0\(0),
      I3 => \delay_20us_count_reg__0\(2),
      O => \plusOp__1\(3)
    );
\delay_20us_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(2),
      I1 => \delay_20us_count_reg__0\(0),
      I2 => \delay_20us_count_reg__0\(1),
      I3 => \delay_20us_count_reg__0\(3),
      I4 => \delay_20us_count_reg__0\(4),
      O => \plusOp__1\(4)
    );
\delay_20us_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(5),
      I1 => \delay_20us_count_reg__0\(2),
      I2 => \delay_20us_count_reg__0\(0),
      I3 => \delay_20us_count_reg__0\(1),
      I4 => \delay_20us_count_reg__0\(3),
      I5 => \delay_20us_count_reg__0\(4),
      O => \plusOp__1\(5)
    );
\delay_20us_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(6),
      I1 => \delay_20us_count[9]_i_2_n_0\,
      I2 => \delay_20us_count_reg__0\(5),
      O => \plusOp__1\(6)
    );
\delay_20us_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(7),
      I1 => \delay_20us_count_reg__0\(5),
      I2 => \delay_20us_count[9]_i_2_n_0\,
      I3 => \delay_20us_count_reg__0\(6),
      O => \plusOp__1\(7)
    );
\delay_20us_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(8),
      I1 => \delay_20us_count_reg__0\(6),
      I2 => \delay_20us_count[9]_i_2_n_0\,
      I3 => \delay_20us_count_reg__0\(5),
      I4 => \delay_20us_count_reg__0\(7),
      O => \plusOp__1\(8)
    );
\delay_20us_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(9),
      I1 => \delay_20us_count_reg__0\(7),
      I2 => \delay_20us_count_reg__0\(8),
      I3 => \delay_20us_count_reg__0\(6),
      I4 => \delay_20us_count[9]_i_2_n_0\,
      I5 => \delay_20us_count_reg__0\(5),
      O => \plusOp__1\(9)
    );
\delay_20us_count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \delay_20us_count_reg__0\(4),
      I1 => \delay_20us_count_reg__0\(3),
      I2 => \delay_20us_count_reg__0\(1),
      I3 => \delay_20us_count_reg__0\(0),
      I4 => \delay_20us_count_reg__0\(2),
      O => \delay_20us_count[9]_i_2_n_0\
    );
\delay_20us_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(0),
      Q => \delay_20us_count_reg__0\(0),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(10),
      Q => \delay_20us_count_reg__0\(10),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(1),
      Q => \delay_20us_count_reg__0\(1),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(2),
      Q => \delay_20us_count_reg__0\(2),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(3),
      Q => \delay_20us_count_reg__0\(3),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(4),
      Q => \delay_20us_count_reg__0\(4),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(5),
      Q => \delay_20us_count_reg__0\(5),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(6),
      Q => \delay_20us_count_reg__0\(6),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(7),
      Q => \delay_20us_count_reg__0\(7),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(8),
      Q => \delay_20us_count_reg__0\(8),
      R => \delay_20us_count[10]_i_1_n_0\
    );
\delay_20us_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_20us_count[10]_i_2_n_0\,
      D => \plusOp__1\(9),
      Q => \delay_20us_count_reg__0\(9),
      R => \delay_20us_count[10]_i_1_n_0\
    );
delay_20us_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \delay_20us_count[10]_i_4_n_0\,
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => state(2),
      I5 => state(4),
      O => delay_20us_done_i_1_n_0
    );
delay_20us_done_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => delay_20us_done_i_1_n_0,
      Q => delay_20us_done,
      R => '0'
    );
\delay_63clk_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(0),
      O => \plusOp__2\(0)
    );
\delay_63clk_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(0),
      I1 => \delay_63clk_count_reg__0\(1),
      O => \plusOp__2\(1)
    );
\delay_63clk_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(2),
      I1 => \delay_63clk_count_reg__0\(0),
      I2 => \delay_63clk_count_reg__0\(1),
      O => \plusOp__2\(2)
    );
\delay_63clk_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(1),
      I1 => \delay_63clk_count_reg__0\(0),
      I2 => \delay_63clk_count_reg__0\(2),
      I3 => \delay_63clk_count_reg__0\(3),
      O => \plusOp__2\(3)
    );
\delay_63clk_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(4),
      I1 => \delay_63clk_count_reg__0\(1),
      I2 => \delay_63clk_count_reg__0\(0),
      I3 => \delay_63clk_count_reg__0\(2),
      I4 => \delay_63clk_count_reg__0\(3),
      O => \plusOp__2\(4)
    );
\delay_63clk_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(5),
      I1 => \delay_63clk_count_reg__0\(3),
      I2 => \delay_63clk_count_reg__0\(2),
      I3 => \delay_63clk_count_reg__0\(0),
      I4 => \delay_63clk_count_reg__0\(1),
      I5 => \delay_63clk_count_reg__0\(4),
      O => \plusOp__2\(5)
    );
\delay_63clk_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => state(3),
      O => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(5),
      I1 => \delay_63clk_count[6]_i_4_n_0\,
      I2 => \delay_63clk_count_reg__0\(4),
      I3 => \delay_63clk_count_reg__0\(6),
      O => \delay_63clk_count[6]_i_2_n_0\
    );
\delay_63clk_count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(6),
      I1 => \delay_63clk_count_reg__0\(4),
      I2 => \delay_63clk_count[6]_i_4_n_0\,
      I3 => \delay_63clk_count_reg__0\(5),
      O => \plusOp__2\(6)
    );
\delay_63clk_count[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(3),
      I1 => \delay_63clk_count_reg__0\(2),
      I2 => \delay_63clk_count_reg__0\(0),
      I3 => \delay_63clk_count_reg__0\(1),
      O => \delay_63clk_count[6]_i_4_n_0\
    );
\delay_63clk_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(0),
      Q => \delay_63clk_count_reg__0\(0),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(1),
      Q => \delay_63clk_count_reg__0\(1),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(2),
      Q => \delay_63clk_count_reg__0\(2),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(3),
      Q => \delay_63clk_count_reg__0\(3),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(4),
      Q => \delay_63clk_count_reg__0\(4),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(5),
      Q => \delay_63clk_count_reg__0\(5),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
\delay_63clk_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \delay_63clk_count[6]_i_2_n_0\,
      D => \plusOp__2\(6),
      Q => \delay_63clk_count_reg__0\(6),
      R => \delay_63clk_count[6]_i_1_n_0\
    );
delay_63clk_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \delay_63clk_count_reg__0\(5),
      I1 => \delay_63clk_count[6]_i_4_n_0\,
      I2 => \delay_63clk_count_reg__0\(4),
      I3 => \delay_63clk_count_reg__0\(6),
      I4 => \delay_63clk_count[6]_i_1_n_0\,
      O => delay_63clk_done_i_1_n_0
    );
delay_63clk_done_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => delay_63clk_done_i_1_n_0,
      Q => delay_63clk_done,
      R => '0'
    );
err_nack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => ps2_data_s,
      I3 => ps2_clk_s,
      I4 => state(0),
      I5 => state(2),
      O => err_nack_i_1_n_0
    );
err_nack_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => p_3_in,
      D => err_nack_i_1_n_0,
      Q => lCtlIsrBitTxNoAck,
      R => load_rx_data_i_1_n_0
    );
err_par_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => state(3),
      I1 => state(1),
      I2 => state(0),
      I3 => state(2),
      O => err_par_i_1_n_0
    );
err_par_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => p_3_in,
      D => err_par_i_1_n_0,
      Q => lCtlIsrBitRxErr,
      R => load_rx_data_i_1_n_0
    );
\frame[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CONV_INTEGER(0),
      I1 => lWrite,
      O => \frame[0]_i_1_n_0\
    );
\frame[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACA"
    )
        port map (
      I0 => \frame_reg_n_0_[10]\,
      I1 => ps2_data_s,
      I2 => \frame[9]_i_1_n_0\,
      I3 => lWrite,
      O => \frame[10]_i_1_n_0\
    );
\frame[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(0),
      I1 => lWrite,
      I2 => CONV_INTEGER(1),
      O => \frame[1]_i_1_n_0\
    );
\frame[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(1),
      I1 => lWrite,
      I2 => CONV_INTEGER(2),
      O => \frame[2]_i_1_n_0\
    );
\frame[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(2),
      I1 => lWrite,
      I2 => CONV_INTEGER(3),
      O => \frame[3]_i_1_n_0\
    );
\frame[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(3),
      I1 => lWrite,
      I2 => CONV_INTEGER(4),
      O => \frame[4]_i_1_n_0\
    );
\frame[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(4),
      I1 => lWrite,
      I2 => CONV_INTEGER(5),
      O => \frame[5]_i_1_n_0\
    );
\frame[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(5),
      I1 => lWrite,
      I2 => CONV_INTEGER(6),
      O => \frame[6]_i_1_n_0\
    );
\frame[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(6),
      I1 => lWrite,
      I2 => CONV_INTEGER(7),
      O => \frame[7]_i_1_n_0\
    );
\frame[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => dout(7),
      I1 => lWrite,
      I2 => \frame_reg_n_0_[9]\,
      O => \frame[8]_i_1_n_0\
    );
\frame[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAEA"
    )
        port map (
      I0 => lWrite,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      I4 => state(3),
      I5 => state(4),
      O => \frame[9]_i_1_n_0\
    );
\frame[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tx_parity,
      I1 => lWrite,
      I2 => \frame_reg_n_0_[10]\,
      O => \frame[9]_i_2_n_0\
    );
\frame_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[0]_i_1_n_0\,
      Q => \frame_reg_n_0_[0]\,
      R => '0'
    );
\frame_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => \frame[10]_i_1_n_0\,
      Q => \frame_reg_n_0_[10]\,
      R => '0'
    );
\frame_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[1]_i_1_n_0\,
      Q => CONV_INTEGER(0),
      R => '0'
    );
\frame_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[2]_i_1_n_0\,
      Q => CONV_INTEGER(1),
      R => '0'
    );
\frame_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[3]_i_1_n_0\,
      Q => CONV_INTEGER(2),
      R => '0'
    );
\frame_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[4]_i_1_n_0\,
      Q => CONV_INTEGER(3),
      R => '0'
    );
\frame_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[5]_i_1_n_0\,
      Q => CONV_INTEGER(4),
      R => '0'
    );
\frame_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[6]_i_1_n_0\,
      Q => CONV_INTEGER(5),
      R => '0'
    );
\frame_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[7]_i_1_n_0\,
      Q => CONV_INTEGER(6),
      R => '0'
    );
\frame_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[8]_i_1_n_0\,
      Q => CONV_INTEGER(7),
      R => '0'
    );
\frame_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => \frame[9]_i_1_n_0\,
      D => \frame[9]_i_2_n_0\,
      Q => \frame_reg_n_0_[9]\,
      R => '0'
    );
lWrite_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => lCtlStatusReg(0),
      I1 => state(4),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => lWrite_reg
    );
load_rx_data_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(4),
      I1 => a_SrstReg0,
      O => load_rx_data_i_1_n_0
    );
load_rx_data_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => load_rx_data_i_4_n_0,
      I1 => state(0),
      I2 => state(1),
      I3 => state(3),
      I4 => state(2),
      O => load_rx_data_i_3_n_0
    );
load_rx_data_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => \bit_count_reg__0\(3),
      I1 => \bit_count_reg__0\(2),
      I2 => \bit_count_reg__0\(0),
      I3 => \bit_count_reg__0\(1),
      I4 => \frame_reg_n_0_[9]\,
      I5 => rx_parity,
      O => load_rx_data_i_4_n_0
    );
load_rx_data_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => p_3_in,
      D => load_rx_data_i_3_n_0,
      Q => load_rx_data,
      R => load_rx_data_i_1_n_0
    );
ps2_clk_clean_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \clk_count_reg__0\(5),
      I1 => \clk_count_reg__0\(3),
      I2 => \clk_count_reg__0\(2),
      I3 => \clk_count_reg__0\(0),
      I4 => \clk_count_reg__0\(1),
      I5 => \clk_count_reg__0\(4),
      O => ps2_clk_clean_i_2_n_0
    );
ps2_clk_clean_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => SyncAsyncClk_n_0,
      Q => ps2_clk_clean,
      R => '0'
    );
ps2_clk_h_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ps2_clk_h,
      I1 => S_AXI_aresetn,
      I2 => lCtlSrst,
      I3 => \^ps2_clk_t\,
      O => ps2_clk_h_i_1_n_0
    );
ps2_clk_h_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333333303E3F"
    )
        port map (
      I0 => ps2_clk_h_i_3_n_0,
      I1 => state(4),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(2),
      O => ps2_clk_h
    );
ps2_clk_h_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => delay_100us_done,
      I1 => reset_flag_reg_n_0,
      O => ps2_clk_h_i_3_n_0
    );
ps2_clk_h_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => ps2_clk_h_i_1_n_0,
      Q => \^ps2_clk_t\,
      R => '0'
    );
ps2_clk_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => ps2_clk_clean,
      Q => ps2_clk_s,
      R => '0'
    );
ps2_data_clean_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => data_count_reg(0),
      I1 => data_count_reg(1),
      I2 => data_count_reg(3),
      I3 => data_count_reg(2),
      I4 => data_count_reg(4),
      I5 => data_count_reg(5),
      O => ps2_data_clean_i_2_n_0
    );
ps2_data_clean_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => SyncAsyncData_n_1,
      Q => ps2_data_clean,
      R => '0'
    );
ps2_data_h_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => ps2_data_h_i_2_n_0,
      I1 => state(4),
      I2 => ps2_data_h_i_3_n_0,
      I3 => S_AXI_aresetn,
      I4 => lCtlSrst,
      I5 => \^ps2_data_t\,
      O => ps2_data_h_i_1_n_0
    );
ps2_data_h_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000045"
    )
        port map (
      I0 => state(3),
      I1 => \frame_reg_n_0_[0]\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => ps2_data_h_i_2_n_0
    );
ps2_data_h_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FFFFA0FF"
    )
        port map (
      I0 => \frame_reg_n_0_[0]\,
      I1 => ps2_data_h_i_4_n_0,
      I2 => state(0),
      I3 => state(2),
      I4 => state(3),
      I5 => state(1),
      O => ps2_data_h_i_3_n_0
    );
ps2_data_h_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \bit_count_reg__0\(2),
      I1 => \bit_count_reg__0\(3),
      I2 => \bit_count_reg__0\(1),
      I3 => \bit_count_reg__0\(0),
      O => ps2_data_h_i_4_n_0
    );
ps2_data_h_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => ps2_data_h_i_1_n_0,
      Q => \^ps2_data_t\,
      R => '0'
    );
ps2_data_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => ps2_data_clean,
      Q => ps2_data_s,
      R => '0'
    );
read_data_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF040000000400"
    )
        port map (
      I0 => state(2),
      I1 => read_data_i_2_n_0,
      I2 => state(3),
      I3 => state(4),
      I4 => a_SrstReg0,
      I5 => \^lread\,
      O => read_data_i_1_n_0
    );
read_data_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      O => read_data_i_2_n_0
    );
read_data_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => '1',
      D => read_data_i_1_n_0,
      Q => \^lread\,
      R => '0'
    );
reset_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => state(3),
      I1 => state(4),
      I2 => reset_flag,
      I3 => a_SrstReg0,
      I4 => reset_flag_reg_n_0,
      O => reset_flag_i_1_n_0
    );
reset_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004001"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => state(4),
      O => reset_flag
    );
reset_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => reset_flag_i_1_n_0,
      Q => reset_flag_reg_n_0,
      R => '0'
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(0),
      Q => Q(0),
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(1),
      Q => Q(1),
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(2),
      Q => Q(2),
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(3),
      Q => Q(3),
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(4),
      Q => Q(4),
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(5),
      Q => Q(5),
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(6),
      Q => Q(6),
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_aclk,
      CE => load_rx_data,
      D => CONV_INTEGER(7),
      Q => Q(7),
      R => '0'
    );
rx_parity_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => CONV_INTEGER(2),
      I1 => CONV_INTEGER(3),
      I2 => CONV_INTEGER(4),
      I3 => CONV_INTEGER(5),
      I4 => rx_parity_i_2_n_0,
      O => rx_parity_i_1_n_0
    );
rx_parity_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => CONV_INTEGER(1),
      I1 => CONV_INTEGER(0),
      I2 => CONV_INTEGER(7),
      I3 => CONV_INTEGER(6),
      O => rx_parity_i_2_n_0
    );
rx_parity_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => rx_parity_i_1_n_0,
      Q => rx_parity,
      R => '0'
    );
tx_parity_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => dout(2),
      I1 => dout(3),
      I2 => dout(4),
      I3 => dout(5),
      I4 => tx_parity_i_2_n_0,
      O => tx_parity_i_1_n_0
    );
tx_parity_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => dout(1),
      I1 => dout(0),
      I2 => dout(7),
      I3 => dout(6),
      O => tx_parity_i_2_n_0
    );
tx_parity_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => tx_parity_i_1_n_0,
      Q => tx_parity,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_memory : entity is "memory";
end design_1_axi_ps2_0_0_memory;

architecture STRUCTURE of design_1_axi_ps2_0_0_memory is
  signal dout_i : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.design_1_axi_ps2_0_0_dmem
     port map (
      E(0) => E(0),
      EN => EN,
      Q(7 downto 0) => dout_i(7 downto 0),
      clk => clk,
      count_d10_in(3 downto 0) => count_d10_in(3 downto 0),
      din(7 downto 0) => din(7 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      srst => srst
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(0),
      Q => dout(0),
      R => srst
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(1),
      Q => dout(1),
      R => srst
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(2),
      Q => dout(2),
      R => srst
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(3),
      Q => dout(3),
      R => srst
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(4),
      Q => dout(4),
      R => srst
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(5),
      Q => dout(5),
      R => srst
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(6),
      Q => dout(6),
      R => srst
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(7),
      Q => dout(7),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_memory_6 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    EN : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d10_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_memory_6 : entity is "memory";
end design_1_axi_ps2_0_0_memory_6;

architecture STRUCTURE of design_1_axi_ps2_0_0_memory_6 is
  signal dout_i : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\gdm.dm_gen.dm\: entity work.design_1_axi_ps2_0_0_dmem_7
     port map (
      E(0) => E(0),
      EN => EN,
      Q(7 downto 0) => dout_i(7 downto 0),
      clk => clk,
      count_d10_in(3 downto 0) => count_d10_in(3 downto 0),
      din(7 downto 0) => din(7 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      srst => srst
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(0),
      Q => dout(0),
      R => srst
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(1),
      Q => dout(1),
      R => srst
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(2),
      Q => dout(2),
      R => srst
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(3),
      Q => dout(3),
      R => srst
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(4),
      Q => dout(4),
      R => srst
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(5),
      Q => dout(5),
      R => srst
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(6),
      Q => dout(6),
      R => srst
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => dout_i(7),
      Q => dout(7),
      R => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_logic is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_logic : entity is "rd_logic";
end design_1_axi_ps2_0_0_rd_logic;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_logic is
  signal \^gc0.count_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC;
begin
  \gc0.count_reg[3]\(0) <= \^gc0.count_reg[3]\(0);
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.design_1_axi_ps2_0_0_rd_fwft
     port map (
      E(0) => E(0),
      clk => clk,
      empty => empty,
      \gc0.count_reg[3]\(0) => \^gc0.count_reg[3]\(0),
      \goreg_dm.dout_i_reg[7]\(0) => \goreg_dm.dout_i_reg[7]\(0),
      \out\ => \^out\,
      rd_en => rd_en,
      srst => srst
    );
\grss.rsts\: entity work.design_1_axi_ps2_0_0_rd_status_flags_ss
     port map (
      clk => clk,
      \out\ => \^out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      srst => srst
    );
rpntr: entity work.design_1_axi_ps2_0_0_rd_bin_cntr
     port map (
      E(0) => \^gc0.count_reg[3]\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gpr1.dout_i_reg[1]\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      srst => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_rd_logic_4 is
  port (
    \out\ : out STD_LOGIC;
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpr1.dout_i_reg[1]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    ram_empty_fb_i_reg : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_rd_logic_4 : entity is "rd_logic";
end design_1_axi_ps2_0_0_rd_logic_4;

architecture STRUCTURE of design_1_axi_ps2_0_0_rd_logic_4 is
  signal \^gc0.count_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^out\ : STD_LOGIC;
begin
  \gc0.count_reg[3]\(0) <= \^gc0.count_reg[3]\(0);
  \out\ <= \^out\;
\gr1.gr1_int.rfwft\: entity work.design_1_axi_ps2_0_0_rd_fwft_10
     port map (
      E(0) => E(0),
      clk => clk,
      empty => empty,
      \gc0.count_reg[3]\(0) => \^gc0.count_reg[3]\(0),
      \goreg_dm.dout_i_reg[7]\(0) => \goreg_dm.dout_i_reg[7]\(0),
      \out\ => \^out\,
      rd_en => rd_en,
      srst => srst
    );
\grss.rsts\: entity work.design_1_axi_ps2_0_0_rd_status_flags_ss_11
     port map (
      clk => clk,
      \out\ => \^out\,
      ram_empty_fb_i_reg_0 => ram_empty_fb_i_reg,
      srst => srst
    );
rpntr: entity work.design_1_axi_ps2_0_0_rd_bin_cntr_12
     port map (
      E(0) => \^gc0.count_reg[3]\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gpr1.dout_i_reg[1]\(3 downto 0) => \gpr1.dout_i_reg[1]\(3 downto 0),
      srst => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_logic is
  port (
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_logic : entity is "wr_logic";
end design_1_axi_ps2_0_0_wr_logic;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwss.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.design_1_axi_ps2_0_0_wr_status_flags_ss
     port map (
      E(0) => \^e\(0),
      clk => clk,
      full => full,
      \out\ => \gwss.wsts_n_0\,
      read_data_reg => wpntr_n_0,
      srst => srst,
      wr_en => wr_en
    );
wpntr: entity work.design_1_axi_ps2_0_0_wr_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => \gc0.count_reg[3]\(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => \gpregsm1.curr_fwft_state_reg[0]\(0),
      \out\ => \gwss.wsts_n_0\,
      ram_empty_fb_i_reg => \out\,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_i_reg => wpntr_n_0,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_wr_logic_5 is
  port (
    full : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    lWrite_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    \gc0.count_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_wr_logic_5 : entity is "wr_logic";
end design_1_axi_ps2_0_0_wr_logic_5;

architecture STRUCTURE of design_1_axi_ps2_0_0_wr_logic_5 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gwss.wsts_n_0\ : STD_LOGIC;
  signal wpntr_n_0 : STD_LOGIC;
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.design_1_axi_ps2_0_0_wr_status_flags_ss_8
     port map (
      E(0) => \^e\(0),
      TxDataWriteTrig_reg => wpntr_n_0,
      clk => clk,
      full => full,
      \out\ => \gwss.wsts_n_0\,
      srst => srst,
      wr_en => wr_en
    );
wpntr: entity work.design_1_axi_ps2_0_0_wr_bin_cntr_9
     port map (
      E(0) => \^e\(0),
      Q(3 downto 0) => Q(3 downto 0),
      clk => clk,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => \gc0.count_reg[3]\(3 downto 0),
      lWrite_reg(0) => lWrite_reg(0),
      \out\ => \gwss.wsts_n_0\,
      ram_empty_fb_i_reg => \out\,
      ram_empty_i_reg => ram_empty_i_reg,
      ram_full_i_reg => wpntr_n_0,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_ramfifo is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end design_1_axi_ps2_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gl0.rd_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_2\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.design_1_axi_ps2_0_0_rd_logic
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      Q(3 downto 0) => rd_pntr_plus1(3 downto 0),
      clk => clk,
      empty => empty,
      \gc0.count_reg[3]\(0) => p_7_out,
      \goreg_dm.dout_i_reg[7]\(0) => p_5_out,
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_0_out_0(3 downto 0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en,
      srst => srst
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.design_1_axi_ps2_0_0_wr_logic
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      Q(3 downto 0) => p_11_out(3 downto 0),
      clk => clk,
      full => full,
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\(0) => p_7_out,
      \out\ => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      srst => srst,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.design_1_axi_ps2_0_0_memory
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      EN => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      count_d10_in(3 downto 0) => p_11_out(3 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_5_out,
      srst => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_ramfifo_3 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_ramfifo_3 : entity is "fifo_generator_ramfifo";
end design_1_axi_ps2_0_0_fifo_generator_ramfifo_3;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_ramfifo_3 is
  signal \gntv_or_sync_fifo.gl0.rd_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_2\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_11_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.design_1_axi_ps2_0_0_rd_logic_4
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      Q(3 downto 0) => rd_pntr_plus1(3 downto 0),
      clk => clk,
      empty => empty,
      \gc0.count_reg[3]\(0) => p_7_out,
      \goreg_dm.dout_i_reg[7]\(0) => p_5_out,
      \gpr1.dout_i_reg[1]\(3 downto 0) => p_0_out_0(3 downto 0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      rd_en => rd_en,
      srst => srst
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.design_1_axi_ps2_0_0_wr_logic_5
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.wr_n_1\,
      Q(3 downto 0) => p_11_out(3 downto 0),
      clk => clk,
      full => full,
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gc0.count_reg[3]\(3 downto 0) => rd_pntr_plus1(3 downto 0),
      lWrite_reg(0) => p_7_out,
      \out\ => p_2_out,
      ram_empty_i_reg => \gntv_or_sync_fifo.gl0.wr_n_2\,
      srst => srst,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.design_1_axi_ps2_0_0_memory_6
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_2\,
      EN => \gntv_or_sync_fifo.gl0.wr_n_1\,
      clk => clk,
      count_d10_in(3 downto 0) => p_11_out(3 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_5_out,
      srst => srst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_top is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_top : entity is "fifo_generator_top";
end design_1_axi_ps2_0_0_fifo_generator_top;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.design_1_axi_ps2_0_0_fifo_generator_ramfifo
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_top_2 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_top_2 : entity is "fifo_generator_top";
end design_1_axi_ps2_0_0_fifo_generator_top_2;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_top_2 is
begin
\grf.rf\: entity work.design_1_axi_ps2_0_0_fifo_generator_ramfifo_3
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth : entity is "fifo_generator_v13_1_3_synth";
end design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth is
begin
\gconvfifo.rf\: entity work.design_1_axi_ps2_0_0_fifo_generator_top
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    srst : in STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1 : entity is "fifo_generator_v13_1_3_synth";
end design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1 is
begin
\gconvfifo.rf\: entity work.design_1_axi_ps2_0_0_fifo_generator_top_2
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_v13_1_3 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 : entity is "fifo_generator_v13_1_3";
end design_1_axi_ps2_0_0_fifo_generator_v13_1_3;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_v13_1_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ : entity is "fifo_generator_v13_1_3";
end \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\;

architecture STRUCTURE of \design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.design_1_axi_ps2_0_0_fifo_generator_v13_1_3_synth_1
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      srst => srst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_fifo_generator_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_ps2_0_0_fifo_generator_0 : entity is "fifo_generator_0,fifo_generator_v13_1_3,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_fifo_generator_0 : entity is "fifo_generator_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_ps2_0_0_fifo_generator_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_ps2_0_0_fifo_generator_0 : entity is "fifo_generator_v13_1_3,Vivado 2016.4";
end design_1_axi_ps2_0_0_fifo_generator_0;

architecture STRUCTURE of design_1_axi_ps2_0_0_fifo_generator_0 is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.\design_1_axi_ps2_0_0_fifo_generator_v13_1_3__2\
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(4 downto 0) => NLW_U0_data_count_UNCONNECTED(4 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => B"0000",
      prog_empty_thresh_assert(3 downto 0) => B"0000",
      prog_empty_thresh_negate(3 downto 0) => B"0000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => B"0000",
      prog_full_thresh_assert(3 downto 0) => B"0000",
      prog_full_thresh_negate(3 downto 0) => B"0000",
      rd_clk => '0',
      rd_data_count(4 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => srst,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(4 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ : entity is "fifo_generator_0,fifo_generator_v13_1_3,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ : entity is "fifo_generator_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ : entity is "fifo_generator_v13_1_3,Vivado 2016.4";
end \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\;

architecture STRUCTURE of \design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\ is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 14;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 16;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 4;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 5;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 16;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.design_1_axi_ps2_0_0_fifo_generator_v13_1_3
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(4 downto 0) => NLW_U0_data_count_UNCONNECTED(4 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(3 downto 0) => B"0000",
      prog_empty_thresh_assert(3 downto 0) => B"0000",
      prog_empty_thresh_negate(3 downto 0) => B"0000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(3 downto 0) => B"0000",
      prog_full_thresh_assert(3 downto 0) => B"0000",
      prog_full_thresh_negate(3 downto 0) => B"0000",
      rd_clk => '0',
      rd_data_count(4 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => srst,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(4 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_Ps2InterfaceWrapper is
  port (
    lCtlStatusReg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PS2_Data_T : out STD_LOGIC;
    PS2_Clk_T : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_aclk : in STD_LOGIC;
    a_SrstReg0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    p_3_in : in STD_LOGIC;
    \a_IsrBuffReg_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_aresetn : in STD_LOGIC;
    lCtlSrst : in STD_LOGIC;
    PS2_Clk_I : in STD_LOGIC;
    PS2_Data_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_Ps2InterfaceWrapper : entity is "Ps2InterfaceWrapper";
end design_1_axi_ps2_0_0_Ps2InterfaceWrapper;

architecture STRUCTURE of design_1_axi_ps2_0_0_Ps2InterfaceWrapper is
  signal Ps2Interface_n_3 : STD_LOGIC;
  signal RxDin : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TxDout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^lctlstatusreg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lRead : STD_LOGIC;
  signal lWrite : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RxFIFO : label is "fifo_generator_0,fifo_generator_v13_1_3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of RxFIFO : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of RxFIFO : label is "fifo_generator_v13_1_3,Vivado 2016.4";
  attribute CHECK_LICENSE_TYPE of TxFIFO : label is "fifo_generator_0,fifo_generator_v13_1_3,{}";
  attribute downgradeipidentifiedwarnings of TxFIFO : label is "yes";
  attribute x_core_info of TxFIFO : label is "fifo_generator_v13_1_3,Vivado 2016.4";
begin
  lCtlStatusReg(3 downto 0) <= \^lctlstatusreg\(3 downto 0);
Ps2Interface: entity work.design_1_axi_ps2_0_0_Ps2Interface
     port map (
      D(3 downto 0) => D(3 downto 0),
      E(0) => E(0),
      PS2_Clk_I => PS2_Clk_I,
      PS2_Clk_T => PS2_Clk_T,
      PS2_Data_I => PS2_Data_I,
      PS2_Data_T => PS2_Data_T,
      Q(7 downto 0) => RxDin(7 downto 0),
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_aresetn => S_AXI_aresetn,
      \a_IsrBuffReg_reg[3]\(3 downto 0) => \a_IsrBuffReg_reg[3]\(3 downto 0),
      a_SrstReg0 => a_SrstReg0,
      dout(7 downto 0) => TxDout(7 downto 0),
      lCtlSrst => lCtlSrst,
      lCtlStatusReg(1 downto 0) => \^lctlstatusreg\(2 downto 1),
      lRead => lRead,
      lWrite => lWrite,
      lWrite_reg => Ps2Interface_n_3,
      p_3_in => p_3_in
    );
RxFIFO: entity work.\design_1_axi_ps2_0_0_fifo_generator_0__xdcDup__1\
     port map (
      clk => S_AXI_aclk,
      din(7 downto 0) => RxDin(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => \^lctlstatusreg\(3),
      full => \^lctlstatusreg\(2),
      rd_en => rd_en,
      srst => a_SrstReg0,
      wr_en => lRead
    );
TxFIFO: entity work.design_1_axi_ps2_0_0_fifo_generator_0
     port map (
      clk => S_AXI_aclk,
      din(7 downto 0) => Q(7 downto 0),
      dout(7 downto 0) => TxDout(7 downto 0),
      empty => \^lctlstatusreg\(1),
      full => \^lctlstatusreg\(0),
      rd_en => lWrite,
      srst => a_SrstReg0,
      wr_en => wr_en
    );
lWrite_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_aclk,
      CE => '1',
      D => Ps2Interface_n_3,
      Q => lWrite,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0_axi_ps2_v1_0 is
  port (
    S_AXI_arready : out STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    PS2_interrupt : out STD_LOGIC;
    PS2_Clk_T : out STD_LOGIC;
    PS2_Data_T : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_aclk : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_wvalid : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    PS2_Clk_I : in STD_LOGIC;
    PS2_Data_I : in STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_aresetn : in STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi_ps2_0_0_axi_ps2_v1_0 : entity is "axi_ps2_v1_0";
end design_1_axi_ps2_0_0_axi_ps2_v1_0;

architecture STRUCTURE of design_1_axi_ps2_0_0_axi_ps2_v1_0 is
  signal \Ps2Interface/p_3_in\ : STD_LOGIC;
  signal a_IsrBuffReg08_out : STD_LOGIC;
  signal a_SrstReg0 : STD_LOGIC;
  signal axi_ps2_v1_0_S_AXI_inst_n_10 : STD_LOGIC;
  signal axi_ps2_v1_0_S_AXI_inst_n_8 : STD_LOGIC;
  signal lCtlRxAck : STD_LOGIC;
  signal lCtlRxDataReg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lCtlSrst : STD_LOGIC;
  signal lCtlStatusReg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lCtlTxDataReg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lCtlTxTrig : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
Wrapper: entity work.design_1_axi_ps2_0_0_Ps2InterfaceWrapper
     port map (
      D(3 downto 0) => p_4_out(3 downto 0),
      E(0) => a_IsrBuffReg08_out,
      PS2_Clk_I => PS2_Clk_I,
      PS2_Clk_T => PS2_Clk_T,
      PS2_Data_I => PS2_Data_I,
      PS2_Data_T => PS2_Data_T,
      Q(7 downto 0) => lCtlTxDataReg(7 downto 0),
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_aresetn => S_AXI_aresetn,
      \a_IsrBuffReg_reg[3]\(3) => p_1_in,
      \a_IsrBuffReg_reg[3]\(2) => axi_ps2_v1_0_S_AXI_inst_n_8,
      \a_IsrBuffReg_reg[3]\(1) => p_2_in,
      \a_IsrBuffReg_reg[3]\(0) => axi_ps2_v1_0_S_AXI_inst_n_10,
      a_SrstReg0 => a_SrstReg0,
      dout(7 downto 0) => lCtlRxDataReg(7 downto 0),
      lCtlSrst => lCtlSrst,
      lCtlStatusReg(3 downto 0) => lCtlStatusReg(3 downto 0),
      p_3_in => \Ps2Interface/p_3_in\,
      rd_en => lCtlRxAck,
      wr_en => lCtlTxTrig
    );
axi_ps2_v1_0_S_AXI_inst: entity work.design_1_axi_ps2_0_0_axi_ps2_v1_0_S_AXI
     port map (
      D(3 downto 0) => p_4_out(3 downto 0),
      E(0) => a_IsrBuffReg08_out,
      PS2_interrupt => PS2_interrupt,
      Q(3) => p_1_in,
      Q(2) => axi_ps2_v1_0_S_AXI_inst_n_8,
      Q(1) => p_2_in,
      Q(0) => axi_ps2_v1_0_S_AXI_inst_n_10,
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_araddr(2 downto 0) => S_AXI_araddr(2 downto 0),
      S_AXI_aresetn => S_AXI_aresetn,
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(2 downto 0) => S_AXI_awaddr(2 downto 0),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      S_AXI_wvalid => S_AXI_wvalid,
      a_SrstReg0 => a_SrstReg0,
      dout(7 downto 0) => lCtlRxDataReg(7 downto 0),
      \gpr1.dout_i_reg[7]\(7 downto 0) => lCtlTxDataReg(7 downto 0),
      lCtlSrst => lCtlSrst,
      lCtlStatusReg(3 downto 0) => lCtlStatusReg(3 downto 0),
      p_3_in => \Ps2Interface/p_3_in\,
      rd_en => lCtlRxAck,
      wr_en => lCtlTxTrig
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_ps2_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_ps2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_ps2_0_0 : entity is "design_1_axi_ps2_0_0,axi_ps2_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_ps2_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_ps2_0_0 : entity is "axi_ps2_v1_0,Vivado 2016.4";
end design_1_axi_ps2_0_0;

architecture STRUCTURE of design_1_axi_ps2_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ps2_clk_t\ : STD_LOGIC;
  signal \^ps2_data_t\ : STD_LOGIC;
begin
  PS2_Clk_O <= \^ps2_clk_t\;
  PS2_Clk_T <= \^ps2_clk_t\;
  PS2_Data_O <= \^ps2_data_t\;
  PS2_Data_T <= \^ps2_data_t\;
  S_AXI_bresp(1) <= \<const0>\;
  S_AXI_bresp(0) <= \<const0>\;
  S_AXI_rresp(1) <= \<const0>\;
  S_AXI_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_axi_ps2_0_0_axi_ps2_v1_0
     port map (
      PS2_Clk_I => PS2_Clk_I,
      PS2_Clk_T => \^ps2_clk_t\,
      PS2_Data_I => PS2_Data_I,
      PS2_Data_T => \^ps2_data_t\,
      PS2_interrupt => PS2_interrupt,
      S_AXI_aclk => S_AXI_aclk,
      S_AXI_araddr(2 downto 0) => S_AXI_araddr(4 downto 2),
      S_AXI_aresetn => S_AXI_aresetn,
      S_AXI_arready => S_AXI_arready,
      S_AXI_arvalid => S_AXI_arvalid,
      S_AXI_awaddr(2 downto 0) => S_AXI_awaddr(4 downto 2),
      S_AXI_awready => S_AXI_awready,
      S_AXI_awvalid => S_AXI_awvalid,
      S_AXI_bready => S_AXI_bready,
      S_AXI_bvalid => S_AXI_bvalid,
      S_AXI_rdata(31 downto 0) => S_AXI_rdata(31 downto 0),
      S_AXI_rready => S_AXI_rready,
      S_AXI_rvalid => S_AXI_rvalid,
      S_AXI_wdata(31 downto 0) => S_AXI_wdata(31 downto 0),
      S_AXI_wready => S_AXI_wready,
      S_AXI_wstrb(3 downto 0) => S_AXI_wstrb(3 downto 0),
      S_AXI_wvalid => S_AXI_wvalid
    );
end STRUCTURE;
