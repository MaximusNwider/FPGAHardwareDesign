--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_2422_0.bd
--Design : bd_2422_0
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_2422_0 is
  port (
    AUDIO_OUT_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_OUT_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AUDIO_OUT_tready : in STD_LOGIC;
    AUDIO_OUT_tvalid : out STD_LOGIC;
    DDC_OUT_scl_i : in STD_LOGIC;
    DDC_OUT_scl_o : out STD_LOGIC;
    DDC_OUT_scl_t : out STD_LOGIC;
    DDC_OUT_sda_i : in STD_LOGIC;
    DDC_OUT_sda_o : out STD_LOGIC;
    DDC_OUT_sda_t : out STD_LOGIC;
    LINK_DATA0_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA0_IN_tvalid : in STD_LOGIC;
    LINK_DATA1_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA1_IN_tvalid : in STD_LOGIC;
    LINK_DATA2_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA2_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    S_AXI_CPU_IN_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_arready : out STD_LOGIC;
    S_AXI_CPU_IN_arvalid : in STD_LOGIC;
    S_AXI_CPU_IN_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_CPU_IN_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CPU_IN_awready : out STD_LOGIC;
    S_AXI_CPU_IN_awvalid : in STD_LOGIC;
    S_AXI_CPU_IN_bready : in STD_LOGIC;
    S_AXI_CPU_IN_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_bvalid : out STD_LOGIC;
    S_AXI_CPU_IN_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_rready : in STD_LOGIC;
    S_AXI_CPU_IN_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CPU_IN_rvalid : out STD_LOGIC;
    S_AXI_CPU_IN_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CPU_IN_wready : out STD_LOGIC;
    S_AXI_CPU_IN_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CPU_IN_wvalid : in STD_LOGIC;
    VIDEO_OUT_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    VIDEO_OUT_tlast : out STD_LOGIC;
    VIDEO_OUT_tready : in STD_LOGIC;
    VIDEO_OUT_tuser : out STD_LOGIC;
    VIDEO_OUT_tvalid : out STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    cable_detect : in STD_LOGIC;
    fid : out STD_LOGIC;
    hpd : out STD_LOGIC;
    irq : out STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    video_clk : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_2422_0 : entity is "bd_2422_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_2422_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_2422_0 : entity is "v_hdmi_rx_ss_0.hwdef";
end bd_2422_0;

architecture STRUCTURE of bd_2422_0 is
  component bd_2422_0_v_hdmi_rx_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axis_video_aresetn_in : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    link_data0 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    link_data1 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    link_data2 : in STD_LOGIC_VECTOR ( 19 downto 0 );
    link_valid0 : in STD_LOGIC;
    link_valid1 : in STD_LOGIC;
    link_valid2 : in STD_LOGIC;
    hpd : out STD_LOGIC;
    cable_detect : in STD_LOGIC;
    video_reset : out STD_LOGIC;
    m_axis_video_aresetn_out : out STD_LOGIC;
    axis_enable : out STD_LOGIC;
    sb_status_data : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sb_status_valid : in STD_LOGIC;
    avmute : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    m_axis_video_aclk : in STD_LOGIC;
    video_vs : out STD_LOGIC;
    video_hs : out STD_LOGIC;
    video_data : out STD_LOGIC_VECTOR ( 47 downto 0 );
    video_de : out STD_LOGIC;
    video_field : out STD_LOGIC;
    video_vs_arb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_hs_arb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_de_arb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_data_arb : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_audio_aresetn : in STD_LOGIC;
    m_axis_audio_aclk : in STD_LOGIC;
    m_axis_audio_tready : in STD_LOGIC;
    m_axis_audio_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_audio_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_audio_tvalid : out STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    m_axis_hdcp_aresetn : out STD_LOGIC;
    m_axis_hdcp_aclk : out STD_LOGIC;
    m_axis_hdcp_aclken : out STD_LOGIC;
    m_axis_hdcp_tid : out STD_LOGIC;
    m_axis_hdcp_tuser : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_hdcp_tdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axis_hdcp_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_hdcp_tvalid : out STD_LOGIC;
    m_axis_hdcp_tlast : out STD_LOGIC;
    m_axis_hdcp_tready : in STD_LOGIC;
    s_axis_hdcp_tid : in STD_LOGIC;
    s_axis_hdcp_tuser : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_hdcp_tdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axis_hdcp_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_hdcp_tvalid : in STD_LOGIC;
    s_axis_hdcp_tlast : in STD_LOGIC;
    s_axis_hdcp_tready : out STD_LOGIC;
    ddc_scl_i : in STD_LOGIC;
    ddc_scl_o : out STD_LOGIC;
    ddc_scl_t : out STD_LOGIC;
    ddc_sda_i : in STD_LOGIC;
    ddc_sda_o : out STD_LOGIC;
    ddc_sda_t : out STD_LOGIC;
    irq : out STD_LOGIC;
    bridge_yuv420 : out STD_LOGIC;
    bridge_pixel_drop : out STD_LOGIC;
    bridge_overflow : in STD_LOGIC
  );
  end component bd_2422_0_v_hdmi_rx_0;
  component bd_2422_0_v_vid_in_axi4s_0 is
  port (
    vid_io_in_clk : in STD_LOGIC;
    vid_io_in_ce : in STD_LOGIC;
    vid_io_in_reset : in STD_LOGIC;
    vid_active_video : in STD_LOGIC;
    vid_vblank : in STD_LOGIC;
    vid_hblank : in STD_LOGIC;
    vid_vsync : in STD_LOGIC;
    vid_hsync : in STD_LOGIC;
    vid_field_id : in STD_LOGIC;
    vid_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_video_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_video_tvalid : out STD_LOGIC;
    m_axis_video_tready : in STD_LOGIC;
    m_axis_video_tuser : out STD_LOGIC;
    m_axis_video_tlast : out STD_LOGIC;
    fid : out STD_LOGIC;
    vtd_active_video : out STD_LOGIC;
    vtd_vblank : out STD_LOGIC;
    vtd_hblank : out STD_LOGIC;
    vtd_vsync : out STD_LOGIC;
    vtd_hsync : out STD_LOGIC;
    vtd_field_id : out STD_LOGIC;
    overflow : out STD_LOGIC;
    underflow : out STD_LOGIC;
    axis_enable : in STD_LOGIC
  );
  end component bd_2422_0_v_vid_in_axi4s_0;
  signal intf_net_bdry_in_LINK_DATA0_IN_TDATA : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal intf_net_bdry_in_LINK_DATA0_IN_TVALID : STD_LOGIC;
  signal intf_net_bdry_in_LINK_DATA1_IN_TDATA : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal intf_net_bdry_in_LINK_DATA1_IN_TVALID : STD_LOGIC;
  signal intf_net_bdry_in_LINK_DATA2_IN_TDATA : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal intf_net_bdry_in_LINK_DATA2_IN_TVALID : STD_LOGIC;
  signal intf_net_bdry_in_SB_STATUS_IN_TDATA : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_bdry_in_SB_STATUS_IN_TVALID : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_ARREADY : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_ARVALID : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_AWREADY : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_AWVALID : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_BREADY : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_BVALID : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_RREADY : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_RVALID : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_WREADY : STD_LOGIC;
  signal intf_net_bdry_in_S_AXI_CPU_IN_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_bdry_in_S_AXI_CPU_IN_WVALID : STD_LOGIC;
  signal intf_net_v_hdmi_rx_AUDIO_OUT_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_v_hdmi_rx_AUDIO_OUT_TID : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal intf_net_v_hdmi_rx_AUDIO_OUT_TREADY : STD_LOGIC;
  signal intf_net_v_hdmi_rx_AUDIO_OUT_TVALID : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SCL_I : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SCL_O : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SCL_T : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SDA_I : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SDA_O : STD_LOGIC;
  signal intf_net_v_hdmi_rx_DDC_OUT_SDA_T : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_DATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_v_hdmi_rx_VIDEO_OUT_FIELD : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC : STD_LOGIC;
  signal intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TDATA : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TID : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TLAST : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TREADY : STD_LOGIC;
  signal intf_net_v_hdmi_rx_hdcp_out_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TUSER : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal intf_net_v_hdmi_rx_hdcp_out_TVALID : STD_LOGIC;
  signal intf_net_v_vid_in_axi4s_VIDEO_OUT_TDATA : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal intf_net_v_vid_in_axi4s_VIDEO_OUT_TLAST : STD_LOGIC;
  signal intf_net_v_vid_in_axi4s_VIDEO_OUT_TREADY : STD_LOGIC;
  signal intf_net_v_vid_in_axi4s_VIDEO_OUT_TUSER : STD_LOGIC;
  signal intf_net_v_vid_in_axi4s_VIDEO_OUT_TVALID : STD_LOGIC;
  signal net_bdry_in_cable_detect : STD_LOGIC;
  signal net_bdry_in_link_clk : STD_LOGIC;
  signal net_bdry_in_s_axi_cpu_aclk : STD_LOGIC;
  signal net_bdry_in_s_axi_cpu_aresetn : STD_LOGIC;
  signal net_bdry_in_s_axis_audio_aclk : STD_LOGIC;
  signal net_bdry_in_s_axis_audio_aresetn : STD_LOGIC;
  signal net_bdry_in_s_axis_video_aclk : STD_LOGIC;
  signal net_bdry_in_s_axis_video_aresetn : STD_LOGIC;
  signal net_bdry_in_video_clk : STD_LOGIC;
  signal net_v_hdmi_rx_acr_cts : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal net_v_hdmi_rx_acr_n : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal net_v_hdmi_rx_acr_valid : STD_LOGIC;
  signal net_v_hdmi_rx_axis_enable : STD_LOGIC;
  signal net_v_hdmi_rx_hpd : STD_LOGIC;
  signal net_v_hdmi_rx_irq : STD_LOGIC;
  signal net_v_hdmi_rx_m_axis_video_aresetn_out : STD_LOGIC;
  signal net_v_hdmi_rx_video_reset : STD_LOGIC;
  signal net_v_vid_in_axi4s_fid : STD_LOGIC;
  signal net_v_vid_in_axi4s_overflow : STD_LOGIC;
  signal NLW_v_hdmi_rx_avmute_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED : STD_LOGIC;
  signal NLW_v_hdmi_rx_video_data_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_v_hdmi_rx_video_de_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_v_vid_in_axi4s_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED : STD_LOGIC;
  signal NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of AUDIO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TREADY";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TVALID";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_I";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_O";
  attribute X_INTERFACE_INFO of DDC_OUT_scl_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SCL_T";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_i : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_I";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_o : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_O";
  attribute X_INTERFACE_INFO of DDC_OUT_sda_t : signal is "xilinx.com:interface:iic:1.0 DDC_OUT SDA_T";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TVALID";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TVALID";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tvalid : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RVALID";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WREADY";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WVALID";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tlast : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TLAST";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tready : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TREADY";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tuser : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TUSER";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tvalid : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TVALID";
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.IRQ INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME INTR.IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of link_clk : signal is "xilinx.com:signal:clock:1.0 CLK.LINK_CLK CLK";
  attribute X_INTERFACE_PARAMETER of link_clk : signal is "XIL_INTERFACENAME CLK.LINK_CLK, ASSOCIATED_BUSIF LINK_DATA0_IN:LINK_DATA1_IN:LINK_DATA2_IN, CLK_DOMAIN bd_2422_0_link_clk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_cpu_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_CPU_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aclk : signal is "XIL_INTERFACENAME CLK.S_AXI_CPU_ACLK, ASSOCIATED_BUSIF SB_STATUS_IN:S_AXI_CPU_IN, ASSOCIATED_RESET s_axi_cpu_aresetn, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axi_cpu_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_CPU_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axi_cpu_aresetn : signal is "XIL_INTERFACENAME RST.S_AXI_CPU_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_audio_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_AUDIO_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_AUDIO_ACLK, ASSOCIATED_BUSIF AUDIO_OUT, ASSOCIATED_RESET s_axis_audio_aresetn, CLK_DOMAIN bd_2422_0_s_axis_audio_aclk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_audio_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_AUDIO_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_audio_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_AUDIO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s_axis_video_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXIS_VIDEO_ACLK CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aclk : signal is "XIL_INTERFACENAME CLK.S_AXIS_VIDEO_ACLK, ASSOCIATED_BUSIF VIDEO_OUT, ASSOCIATED_RESET s_axis_video_aresetn, CLK_DOMAIN bd_2422_0_s_axis_video_aclk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of s_axis_video_aresetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXIS_VIDEO_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of s_axis_video_aresetn : signal is "XIL_INTERFACENAME RST.S_AXIS_VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of video_clk : signal is "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK CLK";
  attribute X_INTERFACE_PARAMETER of video_clk : signal is "XIL_INTERFACENAME CLK.VIDEO_CLK, CLK_DOMAIN bd_2422_0_video_clk, FREQ_HZ 74250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TDATA";
  attribute X_INTERFACE_PARAMETER of AUDIO_OUT_tdata : signal is "XIL_INTERFACENAME AUDIO_OUT, CLK_DOMAIN bd_2422_0_s_axis_audio_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 8, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of AUDIO_OUT_tid : signal is "xilinx.com:interface:axis:1.0 AUDIO_OUT TID";
  attribute X_INTERFACE_INFO of LINK_DATA0_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA0_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA0_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA0_IN, CLK_DOMAIN bd_2422_0_link_clk, FREQ_HZ 74250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of LINK_DATA1_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA1_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA1_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA1_IN, CLK_DOMAIN bd_2422_0_link_clk, FREQ_HZ 74250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of LINK_DATA2_IN_tdata : signal is "xilinx.com:interface:axis:1.0 LINK_DATA2_IN TDATA";
  attribute X_INTERFACE_PARAMETER of LINK_DATA2_IN_tdata : signal is "XIL_INTERFACENAME LINK_DATA2_IN, CLK_DOMAIN bd_2422_0_link_clk, FREQ_HZ 74250000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of SB_STATUS_IN_tdata : signal is "xilinx.com:interface:axis:1.0 SB_STATUS_IN TDATA";
  attribute X_INTERFACE_PARAMETER of SB_STATUS_IN_tdata : signal is "XIL_INTERFACENAME SB_STATUS_IN, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARADDR";
  attribute X_INTERFACE_PARAMETER of S_AXI_CPU_IN_araddr : signal is "XIL_INTERFACENAME S_AXI_CPU_IN, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_2422_0_s_axi_cpu_aclk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN ARPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWADDR";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN AWPROT";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN BRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN RRESP";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WDATA";
  attribute X_INTERFACE_INFO of S_AXI_CPU_IN_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_CPU_IN WSTRB";
  attribute X_INTERFACE_INFO of VIDEO_OUT_tdata : signal is "xilinx.com:interface:axis:1.0 VIDEO_OUT TDATA";
  attribute X_INTERFACE_PARAMETER of VIDEO_OUT_tdata : signal is "XIL_INTERFACENAME VIDEO_OUT, CLK_DOMAIN bd_2422_0_s_axis_video_aclk, FREQ_HZ 74250000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:G_B_R_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 24} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_G {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value G} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_B {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value B} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 8} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_R {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value R} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 16} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 24}, PHASE 0.000, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1";
begin
  AUDIO_OUT_tdata(31 downto 0) <= intf_net_v_hdmi_rx_AUDIO_OUT_TDATA(31 downto 0);
  AUDIO_OUT_tid(7 downto 0) <= intf_net_v_hdmi_rx_AUDIO_OUT_TID(7 downto 0);
  AUDIO_OUT_tvalid <= intf_net_v_hdmi_rx_AUDIO_OUT_TVALID;
  DDC_OUT_scl_o <= intf_net_v_hdmi_rx_DDC_OUT_SCL_O;
  DDC_OUT_scl_t <= intf_net_v_hdmi_rx_DDC_OUT_SCL_T;
  DDC_OUT_sda_o <= intf_net_v_hdmi_rx_DDC_OUT_SDA_O;
  DDC_OUT_sda_t <= intf_net_v_hdmi_rx_DDC_OUT_SDA_T;
  S_AXI_CPU_IN_arready <= intf_net_bdry_in_S_AXI_CPU_IN_ARREADY;
  S_AXI_CPU_IN_awready <= intf_net_bdry_in_S_AXI_CPU_IN_AWREADY;
  S_AXI_CPU_IN_bresp(1 downto 0) <= intf_net_bdry_in_S_AXI_CPU_IN_BRESP(1 downto 0);
  S_AXI_CPU_IN_bvalid <= intf_net_bdry_in_S_AXI_CPU_IN_BVALID;
  S_AXI_CPU_IN_rdata(31 downto 0) <= intf_net_bdry_in_S_AXI_CPU_IN_RDATA(31 downto 0);
  S_AXI_CPU_IN_rresp(1 downto 0) <= intf_net_bdry_in_S_AXI_CPU_IN_RRESP(1 downto 0);
  S_AXI_CPU_IN_rvalid <= intf_net_bdry_in_S_AXI_CPU_IN_RVALID;
  S_AXI_CPU_IN_wready <= intf_net_bdry_in_S_AXI_CPU_IN_WREADY;
  VIDEO_OUT_tdata(47 downto 0) <= intf_net_v_vid_in_axi4s_VIDEO_OUT_TDATA(47 downto 0);
  VIDEO_OUT_tlast <= intf_net_v_vid_in_axi4s_VIDEO_OUT_TLAST;
  VIDEO_OUT_tuser <= intf_net_v_vid_in_axi4s_VIDEO_OUT_TUSER;
  VIDEO_OUT_tvalid <= intf_net_v_vid_in_axi4s_VIDEO_OUT_TVALID;
  acr_cts(19 downto 0) <= net_v_hdmi_rx_acr_cts(19 downto 0);
  acr_n(19 downto 0) <= net_v_hdmi_rx_acr_n(19 downto 0);
  acr_valid <= net_v_hdmi_rx_acr_valid;
  fid <= net_v_vid_in_axi4s_fid;
  hpd <= net_v_hdmi_rx_hpd;
  intf_net_bdry_in_LINK_DATA0_IN_TDATA(19 downto 0) <= LINK_DATA0_IN_tdata(19 downto 0);
  intf_net_bdry_in_LINK_DATA0_IN_TVALID <= LINK_DATA0_IN_tvalid;
  intf_net_bdry_in_LINK_DATA1_IN_TDATA(19 downto 0) <= LINK_DATA1_IN_tdata(19 downto 0);
  intf_net_bdry_in_LINK_DATA1_IN_TVALID <= LINK_DATA1_IN_tvalid;
  intf_net_bdry_in_LINK_DATA2_IN_TDATA(19 downto 0) <= LINK_DATA2_IN_tdata(19 downto 0);
  intf_net_bdry_in_LINK_DATA2_IN_TVALID <= LINK_DATA2_IN_tvalid;
  intf_net_bdry_in_SB_STATUS_IN_TDATA(1 downto 0) <= SB_STATUS_IN_tdata(1 downto 0);
  intf_net_bdry_in_SB_STATUS_IN_TVALID <= SB_STATUS_IN_tvalid;
  intf_net_bdry_in_S_AXI_CPU_IN_ARADDR(8 downto 0) <= S_AXI_CPU_IN_araddr(8 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_ARPROT(2 downto 0) <= S_AXI_CPU_IN_arprot(2 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_ARVALID <= S_AXI_CPU_IN_arvalid;
  intf_net_bdry_in_S_AXI_CPU_IN_AWADDR(8 downto 0) <= S_AXI_CPU_IN_awaddr(8 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_AWPROT(2 downto 0) <= S_AXI_CPU_IN_awprot(2 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_AWVALID <= S_AXI_CPU_IN_awvalid;
  intf_net_bdry_in_S_AXI_CPU_IN_BREADY <= S_AXI_CPU_IN_bready;
  intf_net_bdry_in_S_AXI_CPU_IN_RREADY <= S_AXI_CPU_IN_rready;
  intf_net_bdry_in_S_AXI_CPU_IN_WDATA(31 downto 0) <= S_AXI_CPU_IN_wdata(31 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_WSTRB(3 downto 0) <= S_AXI_CPU_IN_wstrb(3 downto 0);
  intf_net_bdry_in_S_AXI_CPU_IN_WVALID <= S_AXI_CPU_IN_wvalid;
  intf_net_v_hdmi_rx_AUDIO_OUT_TREADY <= AUDIO_OUT_tready;
  intf_net_v_hdmi_rx_DDC_OUT_SCL_I <= DDC_OUT_scl_i;
  intf_net_v_hdmi_rx_DDC_OUT_SDA_I <= DDC_OUT_sda_i;
  intf_net_v_vid_in_axi4s_VIDEO_OUT_TREADY <= VIDEO_OUT_tready;
  irq <= net_v_hdmi_rx_irq;
  net_bdry_in_cable_detect <= cable_detect;
  net_bdry_in_link_clk <= link_clk;
  net_bdry_in_s_axi_cpu_aclk <= s_axi_cpu_aclk;
  net_bdry_in_s_axi_cpu_aresetn <= s_axi_cpu_aresetn;
  net_bdry_in_s_axis_audio_aclk <= s_axis_audio_aclk;
  net_bdry_in_s_axis_audio_aresetn <= s_axis_audio_aresetn;
  net_bdry_in_s_axis_video_aclk <= s_axis_video_aclk;
  net_bdry_in_s_axis_video_aresetn <= s_axis_video_aresetn;
  net_bdry_in_video_clk <= video_clk;
v_hdmi_rx: component bd_2422_0_v_hdmi_rx_0
     port map (
      acr_cts(19 downto 0) => net_v_hdmi_rx_acr_cts(19 downto 0),
      acr_n(19 downto 0) => net_v_hdmi_rx_acr_n(19 downto 0),
      acr_valid => net_v_hdmi_rx_acr_valid,
      avmute => NLW_v_hdmi_rx_avmute_UNCONNECTED,
      axis_enable => net_v_hdmi_rx_axis_enable,
      bridge_overflow => net_v_vid_in_axi4s_overflow,
      bridge_pixel_drop => NLW_v_hdmi_rx_bridge_pixel_drop_UNCONNECTED,
      bridge_yuv420 => NLW_v_hdmi_rx_bridge_yuv420_UNCONNECTED,
      cable_detect => net_bdry_in_cable_detect,
      ddc_scl_i => intf_net_v_hdmi_rx_DDC_OUT_SCL_I,
      ddc_scl_o => intf_net_v_hdmi_rx_DDC_OUT_SCL_O,
      ddc_scl_t => intf_net_v_hdmi_rx_DDC_OUT_SCL_T,
      ddc_sda_i => intf_net_v_hdmi_rx_DDC_OUT_SDA_I,
      ddc_sda_o => intf_net_v_hdmi_rx_DDC_OUT_SDA_O,
      ddc_sda_t => intf_net_v_hdmi_rx_DDC_OUT_SDA_T,
      hpd => net_v_hdmi_rx_hpd,
      irq => net_v_hdmi_rx_irq,
      link_clk => net_bdry_in_link_clk,
      link_data0(19 downto 0) => intf_net_bdry_in_LINK_DATA0_IN_TDATA(19 downto 0),
      link_data1(19 downto 0) => intf_net_bdry_in_LINK_DATA1_IN_TDATA(19 downto 0),
      link_data2(19 downto 0) => intf_net_bdry_in_LINK_DATA2_IN_TDATA(19 downto 0),
      link_valid0 => intf_net_bdry_in_LINK_DATA0_IN_TVALID,
      link_valid1 => intf_net_bdry_in_LINK_DATA1_IN_TVALID,
      link_valid2 => intf_net_bdry_in_LINK_DATA2_IN_TVALID,
      m_axis_audio_aclk => net_bdry_in_s_axis_audio_aclk,
      m_axis_audio_aresetn => net_bdry_in_s_axis_audio_aresetn,
      m_axis_audio_tdata(31 downto 0) => intf_net_v_hdmi_rx_AUDIO_OUT_TDATA(31 downto 0),
      m_axis_audio_tid(7 downto 0) => intf_net_v_hdmi_rx_AUDIO_OUT_TID(7 downto 0),
      m_axis_audio_tready => intf_net_v_hdmi_rx_AUDIO_OUT_TREADY,
      m_axis_audio_tvalid => intf_net_v_hdmi_rx_AUDIO_OUT_TVALID,
      m_axis_hdcp_aclk => NLW_v_hdmi_rx_m_axis_hdcp_aclk_UNCONNECTED,
      m_axis_hdcp_aclken => NLW_v_hdmi_rx_m_axis_hdcp_aclken_UNCONNECTED,
      m_axis_hdcp_aresetn => NLW_v_hdmi_rx_m_axis_hdcp_aresetn_UNCONNECTED,
      m_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TDATA(95 downto 0),
      m_axis_hdcp_tid => intf_net_v_hdmi_rx_hdcp_out_TID,
      m_axis_hdcp_tlast => intf_net_v_hdmi_rx_hdcp_out_TLAST,
      m_axis_hdcp_tready => intf_net_v_hdmi_rx_hdcp_out_TREADY,
      m_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TSTRB(3 downto 0),
      m_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TUSER(31 downto 0),
      m_axis_hdcp_tvalid => intf_net_v_hdmi_rx_hdcp_out_TVALID,
      m_axis_video_aclk => net_bdry_in_s_axis_video_aclk,
      m_axis_video_aresetn_in => net_bdry_in_s_axis_video_aresetn,
      m_axis_video_aresetn_out => net_v_hdmi_rx_m_axis_video_aresetn_out,
      s_axi_aclk => net_bdry_in_s_axi_cpu_aclk,
      s_axi_araddr(8 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_ARADDR(8 downto 0),
      s_axi_aresetn => net_bdry_in_s_axi_cpu_aresetn,
      s_axi_arprot(2 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_ARPROT(2 downto 0),
      s_axi_arready => intf_net_bdry_in_S_AXI_CPU_IN_ARREADY,
      s_axi_arvalid => intf_net_bdry_in_S_AXI_CPU_IN_ARVALID,
      s_axi_awaddr(8 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_AWADDR(8 downto 0),
      s_axi_awprot(2 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_AWPROT(2 downto 0),
      s_axi_awready => intf_net_bdry_in_S_AXI_CPU_IN_AWREADY,
      s_axi_awvalid => intf_net_bdry_in_S_AXI_CPU_IN_AWVALID,
      s_axi_bready => intf_net_bdry_in_S_AXI_CPU_IN_BREADY,
      s_axi_bresp(1 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_BRESP(1 downto 0),
      s_axi_bvalid => intf_net_bdry_in_S_AXI_CPU_IN_BVALID,
      s_axi_rdata(31 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_RDATA(31 downto 0),
      s_axi_rready => intf_net_bdry_in_S_AXI_CPU_IN_RREADY,
      s_axi_rresp(1 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_RRESP(1 downto 0),
      s_axi_rvalid => intf_net_bdry_in_S_AXI_CPU_IN_RVALID,
      s_axi_wdata(31 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_WDATA(31 downto 0),
      s_axi_wready => intf_net_bdry_in_S_AXI_CPU_IN_WREADY,
      s_axi_wstrb(3 downto 0) => intf_net_bdry_in_S_AXI_CPU_IN_WSTRB(3 downto 0),
      s_axi_wvalid => intf_net_bdry_in_S_AXI_CPU_IN_WVALID,
      s_axis_hdcp_tdata(95 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TDATA(95 downto 0),
      s_axis_hdcp_tid => intf_net_v_hdmi_rx_hdcp_out_TID,
      s_axis_hdcp_tlast => intf_net_v_hdmi_rx_hdcp_out_TLAST,
      s_axis_hdcp_tready => intf_net_v_hdmi_rx_hdcp_out_TREADY,
      s_axis_hdcp_tstrb(3 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TSTRB(3 downto 0),
      s_axis_hdcp_tuser(31 downto 0) => intf_net_v_hdmi_rx_hdcp_out_TUSER(31 downto 0),
      s_axis_hdcp_tvalid => intf_net_v_hdmi_rx_hdcp_out_TVALID,
      sb_status_data(1 downto 0) => intf_net_bdry_in_SB_STATUS_IN_TDATA(1 downto 0),
      sb_status_valid => intf_net_bdry_in_SB_STATUS_IN_TVALID,
      video_clk => net_bdry_in_video_clk,
      video_data(47 downto 0) => intf_net_v_hdmi_rx_VIDEO_OUT_DATA(47 downto 0),
      video_data_arb(47 downto 0) => NLW_v_hdmi_rx_video_data_arb_UNCONNECTED(47 downto 0),
      video_de => intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO,
      video_de_arb(1 downto 0) => NLW_v_hdmi_rx_video_de_arb_UNCONNECTED(1 downto 0),
      video_field => intf_net_v_hdmi_rx_VIDEO_OUT_FIELD,
      video_hs => intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC,
      video_hs_arb(1 downto 0) => NLW_v_hdmi_rx_video_hs_arb_UNCONNECTED(1 downto 0),
      video_reset => net_v_hdmi_rx_video_reset,
      video_vs => intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC,
      video_vs_arb(1 downto 0) => NLW_v_hdmi_rx_video_vs_arb_UNCONNECTED(1 downto 0)
    );
v_vid_in_axi4s: component bd_2422_0_v_vid_in_axi4s_0
     port map (
      aclk => net_bdry_in_s_axis_video_aclk,
      aclken => '1',
      aresetn => net_v_hdmi_rx_m_axis_video_aresetn_out,
      axis_enable => net_v_hdmi_rx_axis_enable,
      fid => net_v_vid_in_axi4s_fid,
      m_axis_video_tdata(47 downto 0) => intf_net_v_vid_in_axi4s_VIDEO_OUT_TDATA(47 downto 0),
      m_axis_video_tlast => intf_net_v_vid_in_axi4s_VIDEO_OUT_TLAST,
      m_axis_video_tready => intf_net_v_vid_in_axi4s_VIDEO_OUT_TREADY,
      m_axis_video_tuser => intf_net_v_vid_in_axi4s_VIDEO_OUT_TUSER,
      m_axis_video_tvalid => intf_net_v_vid_in_axi4s_VIDEO_OUT_TVALID,
      overflow => net_v_vid_in_axi4s_overflow,
      underflow => NLW_v_vid_in_axi4s_underflow_UNCONNECTED,
      vid_active_video => intf_net_v_hdmi_rx_VIDEO_OUT_ACTIVE_VIDEO,
      vid_data(47 downto 0) => intf_net_v_hdmi_rx_VIDEO_OUT_DATA(47 downto 0),
      vid_field_id => intf_net_v_hdmi_rx_VIDEO_OUT_FIELD,
      vid_hblank => '0',
      vid_hsync => intf_net_v_hdmi_rx_VIDEO_OUT_HSYNC,
      vid_io_in_ce => '1',
      vid_io_in_clk => net_bdry_in_video_clk,
      vid_io_in_reset => net_v_hdmi_rx_video_reset,
      vid_vblank => '0',
      vid_vsync => intf_net_v_hdmi_rx_VIDEO_OUT_VSYNC,
      vtd_active_video => NLW_v_vid_in_axi4s_vtd_active_video_UNCONNECTED,
      vtd_field_id => NLW_v_vid_in_axi4s_vtd_field_id_UNCONNECTED,
      vtd_hblank => NLW_v_vid_in_axi4s_vtd_hblank_UNCONNECTED,
      vtd_hsync => NLW_v_vid_in_axi4s_vtd_hsync_UNCONNECTED,
      vtd_vblank => NLW_v_vid_in_axi4s_vtd_vblank_UNCONNECTED,
      vtd_vsync => NLW_v_vid_in_axi4s_vtd_vsync_UNCONNECTED
    );
end STRUCTURE;
