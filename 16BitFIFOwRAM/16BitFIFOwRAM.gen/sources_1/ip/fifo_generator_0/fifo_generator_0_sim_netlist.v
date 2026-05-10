// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Sep 23 14:48:33 2022
// Host        : LAPTOP-VOLJ417I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/man01/OneDrive/Desktop/351_Lab1/351_Lab1.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;

  wire almost_empty;
  wire almost_full;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire wr_en;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
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
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
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
  (* C_HAS_SRST = "0" *) 
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
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
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
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_5 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 80480)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
