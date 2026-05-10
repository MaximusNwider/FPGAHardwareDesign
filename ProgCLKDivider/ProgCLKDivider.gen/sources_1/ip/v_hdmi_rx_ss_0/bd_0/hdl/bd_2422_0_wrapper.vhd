--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_2422_0_wrapper.bd
--Design : bd_2422_0_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_2422_0_wrapper is
  port (
    AUDIO_OUT_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AUDIO_OUT_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AUDIO_OUT_tready : in STD_LOGIC;
    AUDIO_OUT_tvalid : out STD_LOGIC;
    DDC_OUT_scl_io : inout STD_LOGIC;
    DDC_OUT_sda_io : inout STD_LOGIC;
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
end bd_2422_0_wrapper;

architecture STRUCTURE of bd_2422_0_wrapper is
  component bd_2422_0 is
  port (
    s_axi_cpu_aclk : in STD_LOGIC;
    s_axi_cpu_aresetn : in STD_LOGIC;
    cable_detect : in STD_LOGIC;
    link_clk : in STD_LOGIC;
    s_axis_audio_aclk : in STD_LOGIC;
    s_axis_audio_aresetn : in STD_LOGIC;
    acr_cts : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_n : out STD_LOGIC_VECTOR ( 19 downto 0 );
    acr_valid : out STD_LOGIC;
    hpd : out STD_LOGIC;
    irq : out STD_LOGIC;
    video_clk : in STD_LOGIC;
    fid : out STD_LOGIC;
    s_axis_video_aresetn : in STD_LOGIC;
    s_axis_video_aclk : in STD_LOGIC;
    LINK_DATA1_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA1_IN_tvalid : in STD_LOGIC;
    LINK_DATA0_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA0_IN_tvalid : in STD_LOGIC;
    SB_STATUS_IN_tdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SB_STATUS_IN_tvalid : in STD_LOGIC;
    LINK_DATA2_IN_tdata : in STD_LOGIC_VECTOR ( 19 downto 0 );
    LINK_DATA2_IN_tvalid : in STD_LOGIC;
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
    VIDEO_OUT_tdata : out STD_LOGIC_VECTOR ( 47 downto 0 );
    VIDEO_OUT_tlast : out STD_LOGIC;
    VIDEO_OUT_tready : in STD_LOGIC;
    VIDEO_OUT_tuser : out STD_LOGIC;
    VIDEO_OUT_tvalid : out STD_LOGIC
  );
  end component bd_2422_0;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal DDC_OUT_scl_i : STD_LOGIC;
  signal DDC_OUT_scl_o : STD_LOGIC;
  signal DDC_OUT_scl_t : STD_LOGIC;
  signal DDC_OUT_sda_i : STD_LOGIC;
  signal DDC_OUT_sda_o : STD_LOGIC;
  signal DDC_OUT_sda_t : STD_LOGIC;
begin
DDC_OUT_scl_iobuf: component IOBUF
     port map (
      I => DDC_OUT_scl_o,
      IO => DDC_OUT_scl_io,
      O => DDC_OUT_scl_i,
      T => DDC_OUT_scl_t
    );
DDC_OUT_sda_iobuf: component IOBUF
     port map (
      I => DDC_OUT_sda_o,
      IO => DDC_OUT_sda_io,
      O => DDC_OUT_sda_i,
      T => DDC_OUT_sda_t
    );
bd_2422_0_i: component bd_2422_0
     port map (
      AUDIO_OUT_tdata(31 downto 0) => AUDIO_OUT_tdata(31 downto 0),
      AUDIO_OUT_tid(7 downto 0) => AUDIO_OUT_tid(7 downto 0),
      AUDIO_OUT_tready => AUDIO_OUT_tready,
      AUDIO_OUT_tvalid => AUDIO_OUT_tvalid,
      DDC_OUT_scl_i => DDC_OUT_scl_i,
      DDC_OUT_scl_o => DDC_OUT_scl_o,
      DDC_OUT_scl_t => DDC_OUT_scl_t,
      DDC_OUT_sda_i => DDC_OUT_sda_i,
      DDC_OUT_sda_o => DDC_OUT_sda_o,
      DDC_OUT_sda_t => DDC_OUT_sda_t,
      LINK_DATA0_IN_tdata(19 downto 0) => LINK_DATA0_IN_tdata(19 downto 0),
      LINK_DATA0_IN_tvalid => LINK_DATA0_IN_tvalid,
      LINK_DATA1_IN_tdata(19 downto 0) => LINK_DATA1_IN_tdata(19 downto 0),
      LINK_DATA1_IN_tvalid => LINK_DATA1_IN_tvalid,
      LINK_DATA2_IN_tdata(19 downto 0) => LINK_DATA2_IN_tdata(19 downto 0),
      LINK_DATA2_IN_tvalid => LINK_DATA2_IN_tvalid,
      SB_STATUS_IN_tdata(1 downto 0) => SB_STATUS_IN_tdata(1 downto 0),
      SB_STATUS_IN_tvalid => SB_STATUS_IN_tvalid,
      S_AXI_CPU_IN_araddr(8 downto 0) => S_AXI_CPU_IN_araddr(8 downto 0),
      S_AXI_CPU_IN_arprot(2 downto 0) => S_AXI_CPU_IN_arprot(2 downto 0),
      S_AXI_CPU_IN_arready => S_AXI_CPU_IN_arready,
      S_AXI_CPU_IN_arvalid => S_AXI_CPU_IN_arvalid,
      S_AXI_CPU_IN_awaddr(8 downto 0) => S_AXI_CPU_IN_awaddr(8 downto 0),
      S_AXI_CPU_IN_awprot(2 downto 0) => S_AXI_CPU_IN_awprot(2 downto 0),
      S_AXI_CPU_IN_awready => S_AXI_CPU_IN_awready,
      S_AXI_CPU_IN_awvalid => S_AXI_CPU_IN_awvalid,
      S_AXI_CPU_IN_bready => S_AXI_CPU_IN_bready,
      S_AXI_CPU_IN_bresp(1 downto 0) => S_AXI_CPU_IN_bresp(1 downto 0),
      S_AXI_CPU_IN_bvalid => S_AXI_CPU_IN_bvalid,
      S_AXI_CPU_IN_rdata(31 downto 0) => S_AXI_CPU_IN_rdata(31 downto 0),
      S_AXI_CPU_IN_rready => S_AXI_CPU_IN_rready,
      S_AXI_CPU_IN_rresp(1 downto 0) => S_AXI_CPU_IN_rresp(1 downto 0),
      S_AXI_CPU_IN_rvalid => S_AXI_CPU_IN_rvalid,
      S_AXI_CPU_IN_wdata(31 downto 0) => S_AXI_CPU_IN_wdata(31 downto 0),
      S_AXI_CPU_IN_wready => S_AXI_CPU_IN_wready,
      S_AXI_CPU_IN_wstrb(3 downto 0) => S_AXI_CPU_IN_wstrb(3 downto 0),
      S_AXI_CPU_IN_wvalid => S_AXI_CPU_IN_wvalid,
      VIDEO_OUT_tdata(47 downto 0) => VIDEO_OUT_tdata(47 downto 0),
      VIDEO_OUT_tlast => VIDEO_OUT_tlast,
      VIDEO_OUT_tready => VIDEO_OUT_tready,
      VIDEO_OUT_tuser => VIDEO_OUT_tuser,
      VIDEO_OUT_tvalid => VIDEO_OUT_tvalid,
      acr_cts(19 downto 0) => acr_cts(19 downto 0),
      acr_n(19 downto 0) => acr_n(19 downto 0),
      acr_valid => acr_valid,
      cable_detect => cable_detect,
      fid => fid,
      hpd => hpd,
      irq => irq,
      link_clk => link_clk,
      s_axi_cpu_aclk => s_axi_cpu_aclk,
      s_axi_cpu_aresetn => s_axi_cpu_aresetn,
      s_axis_audio_aclk => s_axis_audio_aclk,
      s_axis_audio_aresetn => s_axis_audio_aresetn,
      s_axis_video_aclk => s_axis_video_aclk,
      s_axis_video_aresetn => s_axis_video_aresetn,
      video_clk => video_clk
    );
end STRUCTURE;
