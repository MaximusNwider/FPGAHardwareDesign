vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+D:/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"d:/FPGAHardwareDesign/ProgCLKDivider/ProgCLKDivider.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_0/bd_2422_0_v_hdmi_rx_0_sim_netlist.vhdl" \
"d:/FPGAHardwareDesign/ProgCLKDivider/ProgCLKDivider.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/ip/ip_1/bd_2422_0_v_vid_in_axi4s_0_sim_netlist.vhdl" \
"../../../../ProgCLKDivider.gen/sources_1/ip/v_hdmi_rx_ss_0/bd_0/sim/bd_2422_0.vhd" \
"d:/FPGAHardwareDesign/ProgCLKDivider/ProgCLKDivider.gen/sources_1/ip/v_hdmi_rx_ss_0/v_hdmi_rx_ss_0_sim_netlist.vhdl" \

vlog -work xil_defaultlib \
"glbl.v"

