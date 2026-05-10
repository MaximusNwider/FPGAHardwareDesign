-- (c) Copyright 1995-2026 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_hdmi_rx_ss:3.1
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY v_hdmi_rx_ss_0 IS
  PORT (
    s_axi_cpu_aclk : IN STD_LOGIC;
    s_axi_cpu_aresetn : IN STD_LOGIC;
    cable_detect : IN STD_LOGIC;
    link_clk : IN STD_LOGIC;
    s_axis_audio_aclk : IN STD_LOGIC;
    s_axis_audio_aresetn : IN STD_LOGIC;
    acr_cts : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    acr_n : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
    acr_valid : OUT STD_LOGIC;
    hpd : OUT STD_LOGIC;
    irq : OUT STD_LOGIC;
    video_clk : IN STD_LOGIC;
    fid : OUT STD_LOGIC;
    s_axis_video_aresetn : IN STD_LOGIC;
    s_axis_video_aclk : IN STD_LOGIC;
    LINK_DATA1_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    LINK_DATA1_IN_tvalid : IN STD_LOGIC;
    LINK_DATA0_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    LINK_DATA0_IN_tvalid : IN STD_LOGIC;
    SB_STATUS_IN_tdata : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    SB_STATUS_IN_tvalid : IN STD_LOGIC;
    LINK_DATA2_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    LINK_DATA2_IN_tvalid : IN STD_LOGIC;
    S_AXI_CPU_IN_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_CPU_IN_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_CPU_IN_arready : OUT STD_LOGIC;
    S_AXI_CPU_IN_arvalid : IN STD_LOGIC;
    S_AXI_CPU_IN_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    S_AXI_CPU_IN_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S_AXI_CPU_IN_awready : OUT STD_LOGIC;
    S_AXI_CPU_IN_awvalid : IN STD_LOGIC;
    S_AXI_CPU_IN_bready : IN STD_LOGIC;
    S_AXI_CPU_IN_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_CPU_IN_bvalid : OUT STD_LOGIC;
    S_AXI_CPU_IN_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_CPU_IN_rready : IN STD_LOGIC;
    S_AXI_CPU_IN_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S_AXI_CPU_IN_rvalid : OUT STD_LOGIC;
    S_AXI_CPU_IN_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S_AXI_CPU_IN_wready : OUT STD_LOGIC;
    S_AXI_CPU_IN_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXI_CPU_IN_wvalid : IN STD_LOGIC;
    AUDIO_OUT_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    AUDIO_OUT_tid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    AUDIO_OUT_tready : IN STD_LOGIC;
    AUDIO_OUT_tvalid : OUT STD_LOGIC;
    DDC_OUT_scl_i : IN STD_LOGIC;
    DDC_OUT_scl_o : OUT STD_LOGIC;
    DDC_OUT_scl_t : OUT STD_LOGIC;
    DDC_OUT_sda_i : IN STD_LOGIC;
    DDC_OUT_sda_o : OUT STD_LOGIC;
    DDC_OUT_sda_t : OUT STD_LOGIC;
    VIDEO_OUT_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
    VIDEO_OUT_tlast : OUT STD_LOGIC;
    VIDEO_OUT_tready : IN STD_LOGIC;
    VIDEO_OUT_tuser : OUT STD_LOGIC;
    VIDEO_OUT_tvalid : OUT STD_LOGIC
  );
END v_hdmi_rx_ss_0;

ARCHITECTURE v_hdmi_rx_ss_0_arch OF v_hdmi_rx_ss_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF v_hdmi_rx_ss_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_2422_0 IS
    PORT (
      s_axi_cpu_aclk : IN STD_LOGIC;
      s_axi_cpu_aresetn : IN STD_LOGIC;
      cable_detect : IN STD_LOGIC;
      link_clk : IN STD_LOGIC;
      s_axis_audio_aclk : IN STD_LOGIC;
      s_axis_audio_aresetn : IN STD_LOGIC;
      acr_cts : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      acr_n : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
      acr_valid : OUT STD_LOGIC;
      hpd : OUT STD_LOGIC;
      irq : OUT STD_LOGIC;
      video_clk : IN STD_LOGIC;
      fid : OUT STD_LOGIC;
      s_axis_video_aresetn : IN STD_LOGIC;
      s_axis_video_aclk : IN STD_LOGIC;
      LINK_DATA1_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      LINK_DATA1_IN_tvalid : IN STD_LOGIC;
      LINK_DATA0_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      LINK_DATA0_IN_tvalid : IN STD_LOGIC;
      SB_STATUS_IN_tdata : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      SB_STATUS_IN_tvalid : IN STD_LOGIC;
      LINK_DATA2_IN_tdata : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      LINK_DATA2_IN_tvalid : IN STD_LOGIC;
      S_AXI_CPU_IN_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      S_AXI_CPU_IN_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_CPU_IN_arready : OUT STD_LOGIC;
      S_AXI_CPU_IN_arvalid : IN STD_LOGIC;
      S_AXI_CPU_IN_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      S_AXI_CPU_IN_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S_AXI_CPU_IN_awready : OUT STD_LOGIC;
      S_AXI_CPU_IN_awvalid : IN STD_LOGIC;
      S_AXI_CPU_IN_bready : IN STD_LOGIC;
      S_AXI_CPU_IN_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_CPU_IN_bvalid : OUT STD_LOGIC;
      S_AXI_CPU_IN_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_CPU_IN_rready : IN STD_LOGIC;
      S_AXI_CPU_IN_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S_AXI_CPU_IN_rvalid : OUT STD_LOGIC;
      S_AXI_CPU_IN_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S_AXI_CPU_IN_wready : OUT STD_LOGIC;
      S_AXI_CPU_IN_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXI_CPU_IN_wvalid : IN STD_LOGIC;
      AUDIO_OUT_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      AUDIO_OUT_tid : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      AUDIO_OUT_tready : IN STD_LOGIC;
      AUDIO_OUT_tvalid : OUT STD_LOGIC;
      DDC_OUT_scl_i : IN STD_LOGIC;
      DDC_OUT_scl_o : OUT STD_LOGIC;
      DDC_OUT_scl_t : OUT STD_LOGIC;
      DDC_OUT_sda_i : IN STD_LOGIC;
      DDC_OUT_sda_o : OUT STD_LOGIC;
      DDC_OUT_sda_t : OUT STD_LOGIC;
      VIDEO_OUT_tdata : OUT STD_LOGIC_VECTOR(47 DOWNTO 0);
      VIDEO_OUT_tlast : OUT STD_LOGIC;
      VIDEO_OUT_tready : IN STD_LOGIC;
      VIDEO_OUT_tuser : OUT STD_LOGIC;
      VIDEO_OUT_tvalid : OUT STD_LOGIC
    );
  END COMPONENT bd_2422_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF v_hdmi_rx_ss_0_arch: ARCHITECTURE IS "bd_2422_0,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF v_hdmi_rx_ss_0_arch : ARCHITECTURE IS "v_hdmi_rx_ss_0,bd_2422_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF v_hdmi_rx_ss_0_arch: ARCHITECTURE IS "v_hdmi_rx_ss_0,bd_2422_0,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_hdmi_rx_ss,x_ipVersion=3.1,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL,Component_Name=v_hdmi_rx_ss_0,C_INCLUDE_HDCP_1_4=false,C_INCLUDE_HDCP_2_2=false,C_MAX_BITS_PER_COMPONENT=8,C_INPUT_PIXELS_PER_CLOCK=2,C_EDID_RAM_SIZE=256,C_ADDR_WIDTH=10,C_INCLUDE_LOW_RESO_VID=false,C_VID_INTERFACE=0,C_INCLUDE_YUV420_SUP=false,C_VALIDATION_ENABLE=false,C_HDMI_FAST_SWITCH=false,C_SMARTCONNECT_ENABL" & 
"E=false,C_HPD_INVERT=false,C_CD_INVERT=false,C_EXDES_TOPOLOGY=0,C_EXDES_TX_PLL_SELECTION=1,C_EXDES_RX_PLL_SELECTION=0,C_EXDES_NIDRU=true,C_HDMI_VERSION=3,C_CH_WIDTH=8,C_ADD_MARK_DBG=false,C_EXDES_AXILITE_FREQ=100,C_RELAX_DVI_CONSTRAINT=0,x_ipLicense=v_hdmi@2017.10(design_linking)}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF VIDEO_OUT_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF VIDEO_OUT_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF VIDEO_OUT_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF VIDEO_OUT_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF VIDEO_OUT_tdata: SIGNAL IS "XIL_INTERFACENAME VIDEO_OUT, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 74250000, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axis_video_aclk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {" & 
"}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate depen" & 
"dency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve" & 
"_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maxi" & 
"mum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependen" & 
"cy {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} valu" & 
"e 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type i" & 
"mmediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF VIDEO_OUT_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_sda_t: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_sda_o: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_sda_i: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_scl_t: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_scl_o: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O";
  ATTRIBUTE X_INTERFACE_INFO OF DDC_OUT_scl_i: SIGNAL IS "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I";
  ATTRIBUTE X_INTERFACE_INFO OF AUDIO_OUT_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF AUDIO_OUT_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF AUDIO_OUT_tid: SIGNAL IS "xilinx.com:interface:axis:1.0 AUDIO_OUT TID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF AUDIO_OUT_tdata: SIGNAL IS "XIL_INTERFACENAME AUDIO_OUT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axis_audio_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF AUDIO_OUT_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXI_CPU_IN_araddr: SIGNAL IS "XIL_INTERFACENAME S_AXI_CPU_IN, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, NUM_READ_THREADS 1, NUM_WR" & 
"ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXI_CPU_IN_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA2_IN_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF LINK_DATA2_IN_tdata: SIGNAL IS "XIL_INTERFACENAME LINK_DATA2_IN, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 74250000, PHASE 0.000, CLK_DOMAIN bd_2422_0_link_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA2_IN_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF SB_STATUS_IN_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SB_STATUS_IN_tdata: SIGNAL IS "XIL_INTERFACENAME SB_STATUS_IN, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SB_STATUS_IN_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA0_IN_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF LINK_DATA0_IN_tdata: SIGNAL IS "XIL_INTERFACENAME LINK_DATA0_IN, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 74250000, PHASE 0.000, CLK_DOMAIN bd_2422_0_link_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA0_IN_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA1_IN_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF LINK_DATA1_IN_tdata: SIGNAL IS "XIL_INTERFACENAME LINK_DATA1_IN, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 74250000, PHASE 0.000, CLK_DOMAIN bd_2422_0_link_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF LINK_DATA1_IN_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_video_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.s_axis_video_aclk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axis_video_aclk, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.s_axis_video_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_video_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.s_axis_video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.s_axis_video_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF video_clk: SIGNAL IS "XIL_INTERFACENAME CLK.video_clk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_2422_0_video_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF video_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.video_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF irq: SIGNAL IS "XIL_INTERFACENAME INTR.irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_audio_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.s_axis_audio_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_audio_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.s_axis_audio_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_audio_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axis_audio_aclk, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_audio_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.s_axis_audio_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF link_clk: SIGNAL IS "XIL_INTERFACENAME CLK.link_clk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_2422_0_link_clk, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF link_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.link_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_cpu_aresetn: SIGNAL IS "XIL_INTERFACENAME RST.s_axi_cpu_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cpu_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.s_axi_cpu_aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_cpu_aclk: SIGNAL IS "XIL_INTERFACENAME CLK.s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_cpu_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.s_axi_cpu_aclk CLK";
BEGIN
  U0 : bd_2422_0
    PORT MAP (
      s_axi_cpu_aclk => s_axi_cpu_aclk,
      s_axi_cpu_aresetn => s_axi_cpu_aresetn,
      cable_detect => cable_detect,
      link_clk => link_clk,
      s_axis_audio_aclk => s_axis_audio_aclk,
      s_axis_audio_aresetn => s_axis_audio_aresetn,
      acr_cts => acr_cts,
      acr_n => acr_n,
      acr_valid => acr_valid,
      hpd => hpd,
      irq => irq,
      video_clk => video_clk,
      fid => fid,
      s_axis_video_aresetn => s_axis_video_aresetn,
      s_axis_video_aclk => s_axis_video_aclk,
      LINK_DATA1_IN_tdata => LINK_DATA1_IN_tdata,
      LINK_DATA1_IN_tvalid => LINK_DATA1_IN_tvalid,
      LINK_DATA0_IN_tdata => LINK_DATA0_IN_tdata,
      LINK_DATA0_IN_tvalid => LINK_DATA0_IN_tvalid,
      SB_STATUS_IN_tdata => SB_STATUS_IN_tdata,
      SB_STATUS_IN_tvalid => SB_STATUS_IN_tvalid,
      LINK_DATA2_IN_tdata => LINK_DATA2_IN_tdata,
      LINK_DATA2_IN_tvalid => LINK_DATA2_IN_tvalid,
      S_AXI_CPU_IN_araddr => S_AXI_CPU_IN_araddr,
      S_AXI_CPU_IN_arprot => S_AXI_CPU_IN_arprot,
      S_AXI_CPU_IN_arready => S_AXI_CPU_IN_arready,
      S_AXI_CPU_IN_arvalid => S_AXI_CPU_IN_arvalid,
      S_AXI_CPU_IN_awaddr => S_AXI_CPU_IN_awaddr,
      S_AXI_CPU_IN_awprot => S_AXI_CPU_IN_awprot,
      S_AXI_CPU_IN_awready => S_AXI_CPU_IN_awready,
      S_AXI_CPU_IN_awvalid => S_AXI_CPU_IN_awvalid,
      S_AXI_CPU_IN_bready => S_AXI_CPU_IN_bready,
      S_AXI_CPU_IN_bresp => S_AXI_CPU_IN_bresp,
      S_AXI_CPU_IN_bvalid => S_AXI_CPU_IN_bvalid,
      S_AXI_CPU_IN_rdata => S_AXI_CPU_IN_rdata,
      S_AXI_CPU_IN_rready => S_AXI_CPU_IN_rready,
      S_AXI_CPU_IN_rresp => S_AXI_CPU_IN_rresp,
      S_AXI_CPU_IN_rvalid => S_AXI_CPU_IN_rvalid,
      S_AXI_CPU_IN_wdata => S_AXI_CPU_IN_wdata,
      S_AXI_CPU_IN_wready => S_AXI_CPU_IN_wready,
      S_AXI_CPU_IN_wstrb => S_AXI_CPU_IN_wstrb,
      S_AXI_CPU_IN_wvalid => S_AXI_CPU_IN_wvalid,
      AUDIO_OUT_tdata => AUDIO_OUT_tdata,
      AUDIO_OUT_tid => AUDIO_OUT_tid,
      AUDIO_OUT_tready => AUDIO_OUT_tready,
      AUDIO_OUT_tvalid => AUDIO_OUT_tvalid,
      DDC_OUT_scl_i => DDC_OUT_scl_i,
      DDC_OUT_scl_o => DDC_OUT_scl_o,
      DDC_OUT_scl_t => DDC_OUT_scl_t,
      DDC_OUT_sda_i => DDC_OUT_sda_i,
      DDC_OUT_sda_o => DDC_OUT_sda_o,
      DDC_OUT_sda_t => DDC_OUT_sda_t,
      VIDEO_OUT_tdata => VIDEO_OUT_tdata,
      VIDEO_OUT_tlast => VIDEO_OUT_tlast,
      VIDEO_OUT_tready => VIDEO_OUT_tready,
      VIDEO_OUT_tuser => VIDEO_OUT_tuser,
      VIDEO_OUT_tvalid => VIDEO_OUT_tvalid
    );
END v_hdmi_rx_ss_0_arch;
