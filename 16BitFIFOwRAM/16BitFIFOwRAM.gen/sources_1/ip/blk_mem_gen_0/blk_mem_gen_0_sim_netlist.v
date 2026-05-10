// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Sep 22 13:14:36 2022
// Host        : LAPTOP-VOLJ417I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/man01/OneDrive/Desktop/351_Lab1/351_Lab1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [3:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [3:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [3:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "4" *) 
  (* C_ADDRB_WIDTH = "4" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3883 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16" *) 
  (* C_READ_DEPTH_B = "16" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "16" *) 
  (* C_WRITE_DEPTH_B = "16" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[3:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[3:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20576)
`pragma protect data_block
Y+AQaUk592wJNZ4Wd//pvM7hQVccZGFWWQKgcsH2aBPRyW3NIlCTK5yU0w9bd5mC622Y9KRQ1VVo
eLFIOELTGBuUKwXR7gbNxWxMp9VV3vBvBm6oBSsI/gjem4y6roTE7mKVesvjebwZjyikbpNrGttl
ZDwJfwEgrFVs4SopV79XD2qUQNz0/WJG74fCCNUfFQgQqZ8YicYo0Yi+yxt7o0KohtRKoYndUrDv
Ak4eisOZJC5HDr3/hCFFwXKcLM9dqAyvpD1sZwa7L8jyRo/l+yAsYhVl52b6F78avAs8C+VuBtv4
/5YPoX3zG9zrlnjV2Btg0pQQOSuMS2ZNDkmk68n3u3VK6n4bhWB/jl/3Nqt5RfYcwX+Ypmval3iW
sceB60hPCmMML7/rlGwjpNYkF4pH23IvmTjh4hKd+K8d23Tr2pBDsgzZD27gFQBwrXfy83E2Lkia
FXWfDZh+roDYRRNnyWo1dQKgPveJ+Ryw42HHWBmX/Y2hlw/lXTloO7/YkZRg3o7DNCHqnfV6T+Wz
foLuYPGUpPPG2VB0Nw/AfGOM+1tKrvQH1TiwbPGLSlvk+XYFL8dPsvGNOsCFnHr/tXbVyYg20V+Z
OGVpFLtnqCfRX+7eJTzNjL4boEMFsrO9+aF1FmEQwlhy+uDRrOytc24jNzn9fuk4bMPrQJ/NH1+G
P1bKL98BmoyIZpIlj+JGjVW5Sz5QCneYulzJ/34j4EsCUjboU0ovc/kbhdwImxeX+nZmgt5fUquC
WlDbo61uKNXpvajFURSI4X8bPGOEaMGwXq+gOaukAPnCcYYBMdtZPwrch2VPAJv5Bz4Uz7YY1YoY
uOTdQ+Q1fwfdgSW6ZTM9X5/kSygh/o8Aht7d5CxQC4JDa+UDYnrgimErBBDT0pfK3W2LYcmbHWNo
CGp+3Ss+J1jix9sD7Es3OiD9YBW66YKeQ+9QetBiY/ke3qz5P3SdQSzG//B2NG+u42cqhrZOmk5d
Cfok1p/HJz9xbTmtjXBJHOVf5EuzCkgHaSQWaAB4QVYZ0hGLLVjT9ksGmG926hH0DMsW2ZB2qpc3
qkyWpc3Uo/PxOYKJb5FW+UDZb9Icy8QBbK0+fBXxd1tgEdQfzfCmbEm59Ei43lB2+M9008SXfFDM
2C6qnyVDzUP7DQyiU4D80VZwcprOGgZ3bwXK6Yji+UDL6G3NXLGYAIRHpb/u64naid09ZAanYn+6
HVpa6ZmAiSdYZoRR+4BqNnJoLVV+S8HETgP162EDXJ5PcbxXRkoTfxS4Fk2GJLuPF8IJC1QUGtN3
j3/P8MPTZi2Bi/kS0BJJiEPzBkeWJwPf/JO7Z48OACxxeXudMOjWxVRItV/p0WtTS9ughmbFLsC1
RMidUjBYJcQ4Wv5ZSMATWq6ANg6+iuQwe/DZlceuBIfMqr+vtI6oSQk4QlHgvQxpb+DKr7+JZ2m9
TqFTnIhZoRuxcLf8UxLhwtkkLtt2WeyZlKOcB5PW8QgTe1z/Gkra+pdQNr6Avl9QjtVudl907H39
fhu+Dd06tCP2hkUdpvfdy5SkBHO0RJnFD9AVJ2mhBESgrL0ubFL2KgAwPN2+HXEZ1crFIar1VzVK
iIpB0Nb+YW7fQBi7MHgaP/WJQqSb9RIVBplnnHpbcppIW0cah37xATNdmD/5fXKpEFe2iBofqqRe
rLU4xuaKIhNqAYu8jpcjGA4+nEH88qtBx1X7WKJFV+Xt0O3znZEuQdoUk6y3AkXHvJ90afy4P82c
bpY/E4N14FWvpPkVBse44+YtpucanrpCXx/g+jscczdYOeXtuF0Sd2Ua1oIk4xNFD8GcRvM8+4ud
pJjU4o4CJRM60NDtSZU40Eb7+ozwxemnGrs+9+jy4yx+4sQoc50HvRLN9i/mwlyOwkJ7VeG/fF0t
QJYgKCOA4B6t6lmPr2VkZ/BZ+0yIo9uNezSuTI51krh3BpHEWXcK0dLDOZZY53r3Mig4cUJ5Jgl7
KeFBPhtuN7O1Bl3jNZFTKNUMjkGTMyDb6BizINHFfTYfc+vcR4vkv1LFh4GtwrW4T49EIR1tpV4d
TJFXNlgfGr5MYUOkt8HuJYKHjClmP0nVDFS+XCIBeRHCayl1rCa6v32G8RxInvDO8x519B/EkrZg
xrbEm2mKihW9GzZZhSyTjEQG15I2myF0x4sNs6ZQwClXuEbknGK6hejcBkeftZH5p+TtLfyMCw0X
G3oHwApEipuXkm673ac3dTrksskosCAqdMM+hzFsOSdQZ8maQ7cBzl9URSXXt75TFKaBJXvS7BlZ
/mnqsUJc5IiZFqmE2n2zBQdthxb6hL8QRrrEQUWwv+7qodecVzRm6Vw5QU/1eEEl0BC+gQsxZZn6
FCtxtwcNGj+FEXGDuL14SjsrP8g3MFCrYZCxRVKrH4eSiICfdgDilScOGe+wnNIvUlFNqhY+F9DV
uZev5eODe0SOb4yWw0HWgjBSLeJ9bJDXbTwXq3kP0PazAesO+xwh+BpMcf/DOV86mPYK6OhpAZa9
I/bkT9cDHejzRWU/RRMaCYBi4E3gpg3DTNeXt5DFEzXiUv8o2XFKJlsq4KuVHfE415M2NxUlbmq5
C/X8grDsbgCYuu5C+1+hbgFGMfUpFHGPloGvIsJSvRFytYN+DjpHnBPfewK4ZW16gkXheAG3RbF5
D3oyM2H0xfqN+wzTmgr3+d6FI2J1rQXXGXPlcxV42biggV6LfM+Rsud7NqNTVMsrQsKtobhDGHna
u5oqSmTQvG99/D+uX/fPpm40Qitbr9QcowxLCQGJBk6RvXwwiAlNRWk22Nn/jBvSEj3Vmxj9ix2G
14uNtymjWH5msGpC7gO6pkLVldz+ZGO43Q7khcMfYuQW2psAP22gJIcU2elqs5p0MThdAhAd8EWh
GGWtWHEdM6zVr0SwqJ/0ttH1M6OYwkvKVRghuvGtTg2VEuxuVSttEJlT3H/qHO6XI7Xaswk5lJ2B
HcJxAGDTxDK6xIZ1i6fJwTnuvpzBWUuAgQBSpZGGevGnj5KOECzsIo1B9aeRn5hCnZIC0NdckHu0
zbnY2PP5jwggW4C9kosItxCuhUaYKWA24jMx5BsKkYSon6hTCUJ/y+D3xoaHeOPiWgqdO+Wlu80o
bORY6pmOan0Xahx8C+WxShS79G8fTadeOGsoFyxq6182PEHubUyZfxSHtZ0xIRwhmIFOWIZ4t8Mj
YhzH7DEfpEY5pXJpL4xEJUUegh545cYZ0Wks5KRfqNLZZoDdqyenpvHtqW6VK9ONJ/3hTxWidjm9
QlwY1YBM9XEOIKeAgavHeW+6ck4Q4I0keAgP3hEzd1gI+AFgdMw9Bo1UFCFrbE7nA9gZ0eS43ZHh
voHyPLvsWnqhgnuJtyNUNKuHsyVEXqK8bFyx3+rGYc4J4SjmNgJGSmZbe31Y+xK5SvuM21Cn4G88
XhiyF9rrjgZekUGvH1GVr9u4jL2sRuR1s9nCG6jV1Q6wVHH1aWQSv1GJA1mn1inzi0InsmmXqTL5
5EnOcvJzI1D3HR/x9tPeo/RKkbaRYf1PQ9ie/IUQFUdf0wsWWx14DGfE9mOlQ5JG+Sji4ap4SsM9
LpdgS1WlkIexOdfAZgeFloS+7S3AwKhiBLLPAjfxhKNoW3obE5yDu0wPPCj4NlHg70sw8GrhX88l
y+t9Z2AIOvdkUu7Itocn0/fd2jYKpMe/ygqrUc0oIFE6FaT67h5KW+yGhQE7F0xIJjjAYNsE/v7y
Tk/zcwjQOpbd/O0EQuRk/9V5vPkc6r40jz21a/RAlPuMqxDbGBU83XLdz1qMfAu5Ekh9zOf7CHKP
Ms3z75UiEwbGdwPtFHo06Z6COk3QiUQ0NHTi5QlZswJj/nzXsJjDjqEIHSIOQHSNUmhlZfdr4V8o
lvBl1DMwMdA4hltHfJPsi1jkiMR75KG/m0IvZ2rLGZtHAl/jDhHnlRrgneEm5bKnEk44coeu/UXa
uo2SW5P8FhvZJc8K8NykYCyckAXtvESA54PbnDNVsihI/oOcgFVtcJtJST4S2SVSD+o3sz2OsdcU
4u9K4h5v2dSB/ccOr+aFw1/3GvnR7a88x+eqokcnMkA+HPRl+BPQkTu4XJt+t5CyEwOF7aY/tPwl
8krIE7GqwN4Dpr6+jYMAQzHI8E/xb4qxsitAS2NBazZD3D22LehYVtLihX2c8h0pcYfGdxC/dT3n
VSvJ1Ms/XRktWO/jI6FKpclQY+iPd4qaywNzQq+C9z65cnDdIx80oEgZBXm10jueOXSrmeye4564
yne+65N69RTAM27dKbf/zO2kRwsnmOqAFyIMBLCl/TwGi8MjRtucb3rwGSc8oBd/ethHizRMhuqg
1QgC9FNzxw6+uDMJLcUvj3cDvCxRY2KG589xSVLIzpI66dY6W5v5Gob2iyMRB6IoHyc58Nw7S0gW
ppDN72U5cbbYK2arTCYT3OQohrPe/PmOgaoElXqwiQEVRT+SndcCuHERFQ/OvVoKHuU59BNEr67B
YN1tcTUvJ3or8WraO1js9hAhcNzPO6F8YryqzBUHfHHB36cKXvHrB15N4zowv9kx33PsWDCkfh9F
c3yW8fR719U1BzYN06fHNrxFZ4/qdX+4UXGfGT7FXJ23DcsSdTh093SSvqu1LMsmXE888jluw+gm
IUJa9k2zKw2qeRvF2EAz2QykpEeVWM6iO2hmgJTbHyWHImopLh+jkKHtWpYqFSsw0dzf/g8qCMJn
NSKLgAFHnfD4UEWuZIAIeRxGOM7ay7Vfi1r7SYK4/H/KZGCyxlPyG5SN7MttU72F/5ZGjDSiO8+9
KBjGlSWK6DKO5qBKOekHESPADMCRWDppPing3g7bMq1SbbY3geJHm3aSxUTAW5ktIr0xFc4gFp7x
XeMGB94lq+8/k6ThRKQ7T+qo6RKRCtrKwdSS7r4x/ZnE/cTywx9G4XeUssl4v3g5csOGtJ5kH2Ce
4n3z8MQ/Fracf8ULYz6FzO4yfG/Rbrsq5Sx48T/O8UFoDBycmd09dppQ9n0v7YDOuJPUgvMkEGF1
iyoQMAg8TR9oSTxbShWkhbe+HL0IOCHGn6+2XobOOFp9nlcD2guXxQKzBmU5aZOqPRCGBbd7mFxl
KOB7hTmtkricaeKlbOagxz8MW8SEdM3s1kpgrlGroB5B94KsuNYlHYYnU68YYzhLVCQPpzh8uHMW
YaoOY0qBhoDBXTZu2xbmQpDhNezn26D3eKXRUqCe5C4dr7x3H7zQ1lZuyF7WuMYVPUEE4f8Z0p9q
ke+3AJWut9tD2GGXsYNs8wDAiinrOnFnHB2c4kfUptWKvrfsiWiUk/6IhVcPNkcbvzEGXGNlOKS1
7iE2NeeaLZuYwisN6DiGOXOacUOQW9hyPjrxCJ26EHE/ai0SseOCBJzLzh0xcNHQLu0N5GnDK3VU
NulIPafRbkJIIPlzGOFxS4H5ngguToHtXQFCNjt+FCvoe34o3t+vJojXbUccpK/jotZhR1e3RrJc
ewsZZwqCPHJ8KEYzQuFPl0LHXmO4qYeyM0AlHkrgk3tARnTMXZawE62YpbmvZY0u2dTNoxPaKRbs
GAfaDsNCgJHvf2gn1M/JZC58wUUG+7WP2w9bHSWISbPKBN3xGXY9gIb1ZFlD1gIHkpUU4R+/anU0
ehyTX0gkhYkzjVeKDZ+S4Q4ih+3z+7btTjSBIRYbyQrfg7b1LFo9uJ6+c2vm11Lhl7igJCFjzxsl
1EJB8mDdm1F9KBcQA+Qiypr8noiDG+1vjCAFlNlaj4hpbr+b61K2hfnREpWa79ctWTwMbwRC7bOa
H9cg8UY5gGNuinOqgLWmBTmp5mUuH5lWCjfm9Xa6Xzot4aBB1AsUSigRa5XXwLQqMw+P+TALMuIK
7OQU+fNjG3BdOVIzwc4+6ELeX/IVD63rEOTjERUIAnd24RI2GRGYBDUhLjWed4J0aHVsG6nhgSNM
g1/it7CCRDz3ZiO/rGUXDZuLkdijWf0T+zl78mv1XysHUYxt7nhzKLLAvFtXajy4laci1JEp/j1+
cki+oCCO7rKSkp7bOUGz2Bb28cskBHaTs3JRaGuCZuwMsTB0XB5/hhPLK++zbFZwAVOimB1xtf4i
Hl3kJEco+S31jxGgb7YxZxXBskvZs0suBk5gMNweKjAWTDx23kzbdqq8ma5XGl7SOrKlW+Yi+QWR
p//NS60JU1/93NGu7dOM2OINEeSsc7WtTWRJnBH7htTLkEtWoM+jhQgnDboYJz7qOBpobIUKXu54
+B++Ju/rJCOp+5nlge1eKoEnehNPUOwqhToxsyQ0AYh33xOwKFKML99Cv7O2RXDdqD63EPC3N2Sw
zL99JV3oYhFWawcbNvMgv02FxOK48+qRq9IHs+7rtLf5VwlMfeX697JoPeTD6aQ7a7kBBQaqA7hI
fRq5PEqPouoREpD7KqQVhvkF46JSLZJNIdQGp15yhKjFmW/Sf1vjWjsoAMigN7xLl6VP710559mn
XrBjUKEgHyr7k5uk9+1M4ftQMY6gyn93jFgoT64uIB9txIdmzg7nxMdU/lQ5oJMfiMBBvkXAHeg2
YxCYVwCD1Mo0KlDH5S3qj/hH+axNYnO94LRxfJcGSkN1m08zOhecqK+8X988qLNMEtCTiuVi16Hh
ZMh1PXZRGNgDfQhSZBJ3i/4FnePPHujkiuD0NKnZVaqZWj3uYOZ1iPWVHOfmCjoGY3OlJc1Btf2h
zDODN9jpYx8df7AUky82BTtYggvJ6i/chQ7JlAOostRYkYE98WJZJuNWFmqPmyVJ7XKLB0NVUBtP
2IO6j6N7ZWYJKzqojekDt3y07NjHIwQ/DJZWP9cvngrWy1CR979rMmNV0ZOP68WAJvPrwM4io9p4
0mOuU+LDJzkPurClKO/gT5zbEbuWlmXjeTdE1zeOTMzNtZnrwYuZLW6pUDpWp7E+8yrrZZPpnCzA
v0NVzihtUr0Kt7ZLvI3nLyORdIzW9DEDLcx5e71vVDGpVquKK1AkahHf8HhmkrLEd1TlC6RF7I7A
NkNPYhixA0ds4TwUyJrelz+ml+icdQjGvYXOrPcLxyssWZ8CZMAXQlFVcSYMux3Q6NdkfDHf0ueo
tYm/NkYCyLKQhRIZqxsoU2XgjJ6QVPDI2qscqGDjQbOYOTqdFufsUKbsU2eBgkCtoeByu0UpYb4k
U63LD9J6eey0IBoVoKIsFYDAh4gdv3fkiUWd06QverjQ555pdRhWczfj/OnMc0aXCak//yy9IQoI
5SPnWkC19pED6/RfT1uNFdfUnSdOxJZNsbck4z+zN5tkkPDy4tEhAQWgkqxOuJo1QQlLLhPZ0F09
7PqV6/rs+cPnZVFuWAmoo/E4OTAWnS+XHnc7iAjxC3B8cQN+V6cg6MlgUEY8Tg8GR5/NaWx0E320
GTasaq1qLU6ip/UO9wQm4I8LOUixcuiEJ0F+bKVG1vxPfF+tld/InXIIDHdA+Pfyz+aPh6S4uesE
AsIL3EIaG57fgnlnW2xjIGUz6eftfYno7hxkovkAxw7MzO18GFqpem6j2XjdHy8y2AVeg5FKlDvb
3p/HO7tq2PangnT5lJeKXDPm4M59YC98VexZ4kFcKVGEmJtGs8/mQ/V2fi8sm6OdwTr/yaQPOm2f
4k2mI9kW5t8r0j2FsnoA8Lt38RY1yLjz6prDBQGBNG4XL0dIcbXptneyBsKoTzMi12rtK6HyhwJ0
yRBDENfB62mVspFPXBP2UZkqPLT00zvcxrXtHHjSL33ph++JsFSS26SgRlJlmdvzTCy40CTaSi3b
sRZPTfszB+j8hsggcJYzCSFYJ/EhI7l4tPjD6bWx+mzeGrdpTvrHEmDra+Fo8M63pSNrpuhlfgOy
hlj4ivihRTJku5exAeTGl3gmiksjaEgelIH7tecH9l3xCrIp7W6Cmo+TIqGrnREF/ca2HdyVtLxA
vENFsTwzaRlbA66fXMyJL/Wkk3KnZ6zR20037xv5Nibtc8G5fxOocRTiHFK2JENsPjMR0ljz7uFs
QzNLstXvRXSwcFqj6Ubha63M5RTov6zSSUWifcjIDgAh3+IB0ia+oWkDpbJ8EP3efjMqKU6nOJOP
OVvA+wSiJ0rxUVmWIYfTJ1FMAlC01ZeDnm8PfE+jSdMTDrflxYfiYbVoiit/6uTo+KeZ3orlouRS
XCthjaupGEL2YVhhBzLpRZtRNbtyaEaXxUhucAHeamkw1tTNkwksIvvjcJhFs5QzqGr2bCVZnyHc
W4XFvrUNkJm3Cn+nOnmGZ2gyrMJEjCFOgg5atEr1iH74f5gUH5zXEZyvMAVRmL8+sXdArtbdK6dF
wYtNOoQtls9xLyPkPZJYCIkCzlurrROSlk5rJ9dsrIr4Gcwkv4g1J+R2uNRNvBBlmzwvTM0CCzkJ
xctbrFL/1rhYlNY1YqhhD2wdBHhTchk+1Km60Jb7QVnX8QuBLSFnppNvCFZbnRNXd5szSylI1Dhe
O1F1c8dwg0nbbBnav8yaJeVoun4AxDjLEa1QYrCy60OT9sK3OgaiP/HnzYxss4z+vk69ecSvGVnL
WMtnpzBJCfiUvdkY9pquwWSkEe43w0/n89Qk3ZPwnhNBudN6nF7WzlASBA8zSTb9CTeh432L2uN5
U3RgmZ3M6mpCxCo0Aj9IBKBGrVYIQo+c6sq3UHWTY4qG7PCJBcgMDYyMhb4yscfJi3VhEb/WODJJ
B5jAIxU1DGXqJWvd0SU9V6I81yWOO9p126uYbTHzHNOIMbw6p+5SlmXcAFVvblcOWAhgx/j0a6eY
/Ce9YeszvBrTTtY3KVxaAermhSST46SmxVZtZETXl33xUW+DiOgM1NRnljxZMf3yiVRAoTjJDrqY
h9VvSlrYFaBC0u4anxJeCdTpIVFoMh9ApEcPd5dj6fHatC6sv++5y/tNfuD9l6PQO20pcQWyfiaS
TxgT8tI3fvYCZ+gsIfIVAdWZIulb+/fNPHRZyCWzV4GZn47lHyKMfMO1YnXdgtiRyJ3DodYlNUhE
Rj3kXEWZJt5wOc+p/3KTMGEtAogqKonVsnoXhNdMiaYEofGIx/Qg5GCeHplT1JcPGgEDyw9TcLpM
5PFKybfa2b3bIp8HHJ4/mnw9icqahCgOFqoqSnXBZiKaMMj/mbms9dS08zAaOSrdh2/AyTifPCtz
JLmMz0jbTFGZ+fsgb0sDfWYfOZaTa00M9ajYwBmerMZQcR4Q3+tSVrD0I20Ji+l9jI77SLqsYbRj
6nEM3fJLiJrUhlLDfD2bK/jpN/aezt510lZ54NpSF2XntEPfB5dLXgSMI//3jexe7QNNBVeVkypZ
kZ2cMGTB/sn7Hr1SL3McXeKRPV3mrOZDfaVfnwNzDqdiOl02NjigfOPip+dvxfL+Y7kXCRUaGB8r
fZu3aA61N54uQdGpsAUGzzkJsJxApHB/sL9nwrZhmxaJ5tSAi7jAcATogxoI9lwPHA0KVbKPdrBw
qzftw6+x2At8Vy/vX2Gw1OBz/kQ1IQ2gysOnoqKeJfVX0aVdeOenI73nNpGcOkd+jKEcHt5RmO68
edoK5goBPAwnFHiGJmPZzlI7b1kP/c/6I1Nzgfk1UetL62Bpo31+xHb5LuON14kZ0UC+87Zmi3kK
qFwGjgG5aM/32xhcliYLk2SQ9U91rWE7bfhD9OA5D6XMbS+EAYZEq2z0WL/74AqwcD9n8fOg/qNl
VVK64HIJZi8QX2tvMPq9aN3Iwa5kVBpJ0/hhw95NDSO4BVEA1OOdE41uUsJtrv2dPPF2ARPXpHmd
1FnOSN1uxpRicm9TefEogDu0NlEi3vnkj89TEoOvAfzA2ezP/eEgrBt+shF/xA/y6+2M0YRxSKT0
Qv/jbll8iKMh8eepVG2h/aPwvHFLptIJ9ouIruRdHpFsx2rmERpOExo5k6tnmYuTVH2c97BOhmdX
KpWQR8Do4CZlAg5CbK/NVvTRo9rdXQDR9rN8BPDRyzisa5dmI5mJcsR462L839bqNsLdK1uBH2Y2
sg3HlObBMWsxxZGkzoptuqukiSL3TRfUEOCRGj0WeBqwzeQvO5Pwr5eJUi0Q7jdp/C0FiP2RJ/m7
IgLBrEuo57YOsXqaiS61OUnBxy0X5g1fZ6EMGfHQRlDMXf/F9xXEgLjl6+CbeNNzmx+bcwPklKPc
ZGbpjH9fl9bmmvMN0mk5yDDbNkK1qXZGThhTFdcCuBCMQECGciUtIXmQiXesfPYx+53Kg7s2Ukgw
19+wzGMcd3YNJCSMYXf7kxp8azAN6210uO9F5rljce+Vpa32ly+UM24k6UAJevBxjW4Oye4Mc/ji
f+Crm+2tFJQnZBJDckjDLFUkLbsTCVcT91OOczGOfgr6Zxtn77yhu1SoeYRHRQm6aA4bjhCrG2iF
mleMOppqqTU4sWuDqqvpRY5WHRZKYqq3I8Ju9NnFZBWVvLVZveX5gAQYTLPjRUwhw5NxE47xQLlg
5mX3u/cmUvAAVB7UzO5PIenRehGv6VWwbnkHvwAHEITfhBzeYe3cQK8bLvxustc5uZq/y4GLpd54
TN5wZxnTo3EG742vsvmv8fZhBktphUO7Fdr0B0GYa0jxjfuPMKpSLasJ5Yxq3WWUbBG7Xr5ml14L
PGRJk5irqSRTaqmOpC3RW6ET0wb5r/zGHRl5TFj3L73JB95sp6DVZsyRRQk9ih1InAgjBEcNKGEi
1Epqy1FISGNwdQI2jDuCbydsQjRMTYxVeAcfCfeyZK7xRRSj+54udokk2lBwPO41d4Np2enT9V66
7HHW23gcNQvtQpghV9md52ojpzwLgtD4n7bcCVbsLDJzqZIZjnVU4tjxEKwsaDbUDHJlpk/0ITQa
x44IIpArOpO6+dUXwPf7mCYpxzcVnj4a3Y+KTgnJQzKLwUIp3WLctygI0mKAUMUXxHQO0Pm7LBAL
p/FQjVOw5Y6g2UgyR3elD2ySc5mZs8+FZaY/1bfXR0J5ZTUtOlyGfoxB6z2ZpHxXVub5cWx0OhY4
HtP5VfkBxmbWg4p0UBXWNviKO+4JPN0X6Nfzh9Rzbtu58lLsfUID9P/j447xaPLU81bdYjIV6sJT
fuscjPPzYcu/C2ZjjEWMQAB56i9+n4Eb2JmoOxwepxtv/sxAE4711NMY71JLiVejOBIwV8MqYrGX
zi9//YR/AydfC8PvJ5xtEBPMLj/qmF41N1q/PLEZeXoW+Y68Hozq1E/g3774mAJgU5Zvi+p1J8uL
qir9cGIy6Gp3UZVyWwuW+L2i/wauxY9BjvbzGTno6o7LksFXzlgsNkkjK1XpuZbtdgBYR3q8zA/G
7Mkopzv7j9uoKsifNXwgfKj9AhV0CLkIepi6yWOVxA27f0MFsQs+C7z7L3CDuhSFsc1NVFrG4JZG
Kirkl4O7zTFCDDHHKdR5Btx/5mK8BsZoGck0SeuO/rSJWqak9dkto0V6FdRMg0clxekS4dDfBpos
1SbqgQlJUVk0n4tH2505V1UcUslfcGAIm8HzKQS/IMPuobbqb2336mFN8A4DYRBon9ZpCP2xf051
tSrDhKQzqAgwBD1i3v4XdgVcrRAftIKicBBYPYsEYVL1w4cgzWjir17P1QK2x3G9cNouqf4fN+xs
onc0HhUhwXvyQg3BUd0JP2NCh+bZDUbAfhSH8Caecoj1TOQe/2plLllZ92mJNAAhmnuCAz/TONHp
cRco/ysevfDVZqJ6mPVrAlSkZWb8fJxtqYLWtRysWrPzbalkSoUQ/5EXuljvE1zm7pxYa/1plye4
vxY4gEqh8I3bVHWM/4GO4bW7/pjMWdEIF2CMXd6fHA9VjD2KZamva3UT6dPKG3Ip5jdA7ytOsZLn
9feLgTrvS2+V4MfOb9c425yj9538w45UCTS3TBmbG54w00oqHrBDpsGoBhxEoEQaSttMYlO3e2bu
aLU7dt1K3TCzhTvCWVnrmjaEy9OKQ7x0yfDiPebt+F1GRVaK77Dpoc1cAV0ciIslx3/oLjM3+CGL
xHz0bw1eV4RxCo6btee7TZV5zNbv1cKoenNWZjntHDB4ngIKwMJAydNwxc8I+9Hm0+0rpiuMC+q2
RGabyapuLU82NEK/IBRXdB3nGohXTESIOdD6BfKOmkgFR9s4eQiwHsg0WJUkUQ+AmIRVJkkzaH66
k3+ve3BmxsO2lNyAp5pAz1I/pBKGeM3I9LXMNDUDyu5KkgHWsKbIgAqe4Es3uhyw8k7PcIIv4uSo
TTkJGkc8ajfJx5QtQR22qY80vZhOqI/X3DluJiH9nTBHALjsiZI3o3ry1x9ZENS+NsARccHbKWiv
JTY9PGnLy6rVRtDmOrwR3PHekRxxc9SMkRnALw23fMjaSATVkSlO78zcae18cZ4+HkzfKgz1YQ8J
k/XXkfVGFUv3+JTg3xMFNqrsBWIwB0WF+w3xL0z8ukSUkah/IaruIHhbDyvzE49wMyjWhavwQyVA
YuIITCX75adO/T5qAzNlsbX8yk+AHAW8OUwATf7bOr/RpIo487enerPiwuKi0HKxP0fRwoWiPw38
kCjDVimkYxWSE3OahAT6cQQLPBoT+FPqm8WRRx5WcbZN9wVCUX9n+wIAqqY14oDQ1Jk7geGwrBwV
MjOEyx2waDQqh0Ag/Y9hICtNDj2IW0qJcIRmobT+rOX5t53hAskI00KogDO7DI9VfggE7HGFAo3W
KSRxsZ7zS+fgpFr0gSyx3gFpPu00kAOUUKE01YPRz3J/sij8GCkhjdu9lCrxJ5WUtx94qVSkRnHa
q8H0hupQ+br1huROPdZwONCOvDzeiCAq1kd7TxAabPdUe1JN69Qpg7Zkz4KVzKVOG8dTY4ka0ntH
6n9bAPyXUsR2umsWcwRziPtsb3SccJl8J113YLhM9tbIAi6EijyBO6j9cl6/VWnD28NidaYI8Ua9
twKn2V8m3xwTNmUZAAchvGTbGHz4TejvoVi3Ec1Mp7kVjMd7gsIyCSi3P7VyQqR3uzBFxdP1jKp3
/nORrDRjez8MCxeZ/eRPqSoCik1T0PZloWweYwsH0AY0tAGwv57+0erLkr6qx0IFeMxmxkCZ1bOc
uKXolE1eQIeMN93/bvPzhhQd3ZOQ+olzDt2+0ohCs29zHnJD6AZlb+IBgAySX+38npWtWfJr3wVy
nEZJRckIR2VcBNTZjb4HWEBEUDFcTA9YfrcOcNv9uOYNaML24o5nYlbwvippcnn1g2CvxJXnnHl5
aV/XoGIOaxrm4OLBRw39bCWKkRq7op6rG1SqHdU4eGmJOaidmNUuIWWq4hWktthMQ8HZdKh+3Cyc
C+evqxOhxqFUejJ2edrcV7txNCjo0AvBWgXYvdL2hcKDTzGLjhRfZ0VpD45q/vwvwWL0EilXxqW9
QPtAGMI0Q/ekZzKH7sAyAJZrAzSk3Bw42xIiT70Sor5aghkmY1IiJhBZwCS0fvY1QZatrmVQSmay
sXlAKU4jeIftcwqzBOBogUpRYL+39UJBCOPJxwMeXuluADpjjibtSS5CzQjZEXItlcKpUmiO7WEM
a3TiabRxSLB2BAAQatA4ZiPlXBWD5cGbpEP/VW89iGa8iRH0lvMN3ltzysVdog/D3DmPO7U1+dYs
GcX5svtC8zwOYwMn87/DGrHW8imipSg0VzHEe+52HmJ15EHKFLBRQFBT6xkGXEuGj421vXr1RHjj
ejTbKDtUpFywjutapfCo5lBXMexSPtSvw5AlfnGVNF+7df9M+Ku7/ypwnW2itIky8dWzOWpk6Y1+
Tv8Nq57Enb7e4DaUQwzC8rCBAM1/S+XHlBAlmjqVPdQYUSfmKNeUumRx146yRoDYZeAhoEJj55Wz
fsUHe0QJkfnbb9ULsZglpI+EZ5IiBUJurCUI3D19phhqMB6Q4P0JviBDB+j8vdmUVvNuD+MbR/5e
QkVlskiymgn71ZYU/+7EHpXPR7JictJSHUNNuBwZELgHoVmmNQXGRlOfqDUjPxxBkbTf1bvxGsKX
tKWSeKaFZbEl/49KzTiqWWWaXxIL2OULOBJrQG9ht9DHTPpPtRdBIdPCOLZd4jnJ9PWHs30tdsuN
ocCqFOzULFwDpVLE9kkCyKa/oM/74IrIA5poCm7qEzx39bRdLwjTs6dOp77egzs3Mymc20RpwEXQ
yJ7v+4HDg1VcuW76cKpjSJfLe15no4tb38xSQKfXw5ivgZQSiLLHTWO86siaNCXDG9cNnbJ7G1RE
SjhMSKpq8rglEb5fw1N4dzUOFmy1SGxAxZ6WSmjCXGO/+f3pZV/lUgd3K3VYTGPx/ppFVsKzFiJx
AmeqXo5bfY1RoFeeeBZfYVPLzZivqoTLAgHkrfMQvvqkHWEbfeFhRqvDfrJfy2KxY9fcs2cGq73H
bbD/7PW69+uaJlqZOm5Yp6fr3/h/kbKiburOet/Zh+/Zn9q0nUQ8A9x6wtzvwDzmiqJWRjWtcBoN
+tFiH0C5ueGKKvlm1rrBLCXCvFxg7tIXoSsay2KelRt1syn9/Nukg+xR6wZtt6ZQOsH0hB1pAtjj
rjDfz0h2zkCDeOGfuHMh7dVGq29Kahx5jtAqSFpltbcTbu8PJ4MJ2q96agt6f1pGtOX2aoUvMLB1
H6HvUSYD08FSROGEpyGocT+IYoSCy/we9RCkt4EKqMaWhz47J5Q8ewxggkdMOuk9hVOJvPVgxahn
lLnwX7BHP8OOeJ6fipgYF6YJWcV7X2K1HPvmYvL5MJDF0FkEV8ElNjmSsyWH+yxA+fhyqhL1d56f
9FnLPHIppYtcuHW3hVWZ1XVwNljkFgrXNBb0sqZYZbCGch71WtRndj1TnADtu/fTALgPKds5DyZJ
rdohS6thaYgZgpsd1HMHkGNy3Cyjr4bKyZ6lkR23r/Zp1pg/olQ+hy4MEFoqgx253J74bYLaEOw6
TQg+zl5D/10sJwdEoYfkL6EvcgNA4CVHGQTLUr5HrQdzQRHQTRfjOEpEXHsFrf3ZO20bxnmfEQRo
5lZza67Zp10iBtCGxPdQ24d1x+QaYYtfxu1NVLpJvWBVGy2Me0lJLcxLDs+pzLY5iDpCNkudyWiw
D29OvVPWgboAFsHD1XXFCSVCMBVfnMm1rhLll1StLCaw2y6ob8fSSlLB9zpqOZ1o2FrPL6JBXhSR
1YLug/PLDEMeT7Wj2XHwAnhd5cLxvkWOv2kAPJ8TmulPY8+HehLw8inimHzPA/3y+Pv+lTfiqVT9
HIPPWpRnO2QiHKEzQkPdNf1h70bRyW/19ozWlFzQ4RChaBaB/ARoGEeqKVNCaFTioV7fjgAB1GbZ
EE19KMEaSALkz5IoL2nwYtU5/hRl4e+D8WD3yO1I6HfsnHtTyljAgQHfiBEwn3haxPfeywdacOIl
gjMY8SQMFLsnLj6JE21TaBIag5ZcukBCJKu/n92rMce+126GI6gwUjbPebaqvj13EuwVsyoS61gH
ySm+UcMMESJc62VwMDExvM9OJmXtxoydiw7OrJfjhonbQ7R10X+o30GJaYrMhUvy1DXUKkyK5uq7
SS0MAiTdws1A//tuZM+06R3dJQk0oMyXpVi94JmoVswQG7AGQrHcldZ+fDVahA14L3WNqchzooc8
D9806WOzcY/xCF7A2bGe7DR8nOJjSodeyUMgtGlhdG+0qqpkLHS0OHtrtfw8ZK3TtDjd5/auiMws
XrDqHB0kvL4gJ8diymCltQirHPy8IOTz+8lBA39AVp7r4t6EnnHzfybtDmZAoPIU8SgHJQj8HZnx
q3In5Xke4ckircsVjaFOlLaJd2rZfOgyUO7wq8GSd2Vrt9NgGugGhWFrH8Dbzrq852lYcp6nHGyT
J/CEIKn947/kimWcZraD2AMZEY+0JEpe6WpTDAKNh6Im5YcR2Va3tJZ0gR48id1YPC/nHC73p5uT
JvBJwK1oIvYJc4BSM1zLJop2q49rXteHE5hzdSsRmL879eZtNr67maT8Gqg4OWVRlEpFUbP2aYqg
sKU+JUtnwMx5FQ7gx6s18/mE/L8j5XXgypnyHu/8C/VaDoBHSIkgF1OEAZhvy5J3uDQzsys8AG37
ZL/N4UY2INCscmd8MTrJMAPqAl2Y6Li7zz0xEs9ZfcPOjY8Z006hhNrZ10OmmhNLF45qQajnMncE
TFRg5nFTKsBBb5rusGzMp/zci+xIRUib22rX+ycZDc60BiGIiwTGvNHAFqt2FBV2qMAgcZnEU+Ro
8afvXgLP3EX7mcGMnSnCfa/dljwqJ0MI8rzFpq+6ro6FDYDLm8BoTZm5ahX3TKnL4Ge18v1ugIR+
vam79P08RhzmOi5Lb170kXDU8SsZE9wik6p2EAP3qz5cCqwI/Cw9kTncmAtOhjZWUVZDtrgpo9mu
8fOEdAwdP52Xm+ZQI8NdS4ztjwEqd4qreq9yUvxgxOd6I7PbrVO9DYXQsnvY4Tu20TNGCKexd62T
ElU4hc0mdGcwp+/pt7F2htS9wy9oXxedHhVsP8Wmg7sPLOGNOkAmSTjtTUUePCP+yxldPhUEi75b
piBRaC5Cf4m1+5v0c3bRM47cKfimkQLHJfFiSwpTVwaIEK1KtWfmWGWaLJPnjuoGuxsZmHM0k8of
amhrwxsKwyQEnhNOZBJGTHB7vnkS4agwjVdygcAp9qhXqP1kMO/1FCwQaVl7H3NXcsm7H5uREO+c
ItiIO8TTxJnn3mhNbqDq/FKDMXKg6CVnk8q6EQK53tRMEzLfjGZfm+HTyloc3Vkw0/L74IGl3qTV
ZYM643DHKV4d45vf/1+Cjt92JJ4dKo6ThZ+dAhCmpmkBvOF13juB87WaLfbF6ysPZ6MzeehqFQrP
0w7FFEFuPchSfgIpK4DO1r214rnSghMPd2vKQu1cJ6otTORKIOtbGzd3ZnaM+UuFsqvRXWZobIfS
s+R0CiDHHp7mUH5ZmFPAhDz5u0FTMziaKgE1iIBPHpdCVJephx7HLM4b6y2rg27GImlV/2iiQQvh
x/u9sTMFnE89qYYc6TctFYN1iGwVFtzXPeWq6DOydPHH0aOjF8ny7S97lIYwMTARtyOoUXnS9dqX
f4nHe3Pjle7ACfte2YhYwM9dUa8GMm2S8x4cqJJOHXQNscnOjFhPmRvcCWq6gRAXRtAWWRkKWVUJ
iA6a2uSUg3NVLQaeFBbfwcPxU/ymyClz5gw757BMMTFAFKBe5k+JsB/6EfTMOSZB6B7icsrslSM5
GknUdB/ACRoQ4GsGo9MZhHbVC0QkLkpPi1tbCTgZMsc6OEtTTCJesj4/h8/LTcqRlKQJ2auR09Bk
B2VcwASrSdQx1A86pBzFJu9GfR1Bx+puRxhaDx77U7nQcNMmgkl9TkA3j3ItV362L/9LZSGSLoQd
2G9opKmJQLDumTvWtFMXoG5aN4M3MtQJYv43TVCbs+fqQNhQrtHyTmRi9NVfdE4Zb7RUE9mlzGMC
/gQw41vCxAG7tycNI/7RpKQ3dePH6auxM8scM+e6/0VDZZcRUTSsc3g6DSZHpOT+U/okdRCx41mZ
TDtgqFM8Xpnojv36tM3vV+vADTNsqmCo9/wupn4bT4uOwsVzKLrfC9xFDZfe5DcAYgzhbhHO4EYQ
uqUaEl75RyOQRct3JJL/0fNtgudgJF/zBtLUnNtTg1k4NKUUc5Pdf/Rqq2BBBcjD6HovXbFUhhP9
DUoky7DAroKriH3WXIDafuCI8b+wKnCbYTy+FdL+4RGOL7sU/RCQeXdRcIWj//Z8/fQ7ZLu5Z/lm
LvyBYXaU19xb/Jpwp1e13HnI68AE4QPQFO18Z8GSRad5LEQEzOHB+MWQgTkruPjWeNHIJ20xk7ld
XKp4+VPrti2Fl5fxxkTn04uKjMaE20HuNGVM1MCbvanpP0/kx8tyXfLZ13MZzH+so69RDnrLCBLQ
/e1cZ4SKXXD0S3toFP4DjJHICtkhLFeM6r4KuKZXiT42njOKPXsN4QZpfCbkLmNtWbxdETpPwbR+
0v4iDLCQbdn3i16qTh2vIGirIY7mXmW8SuLLWadfHP+j2fyYGWG3QxafgXOfO40Jvkm3x4vgusY0
tP6ugZrX5Gl2FGgQVlzOmsXSf0Xy2kR5vejgRtAktOLHfvg18qnL9FI8Ivkl2h6C5WP71rxGYBkH
lpA1KkzJWvyTh2ap44JU+9YPx03mmkpgNIjAHbnV8jQLyV0la6JuxLOG9AwAYbeTmEe5y57O3sSj
M1lUSbXTA4+CKZ2301LOYKWkKC/T8Ek02RxyebE2toBXJmBE7PMhVrYVICTpdmhzTSzsXrr/Whq5
xRaxgzNMtt+VnfaK1Kfdrr/H3moZOp9M3BRIgQjSq39lU7p8vTEcHBo/sPawVDqOfA0OZVQDiQqO
6sOzxiYqYO/aPNK1G2EMe2O6E+JjbQWZ+zMK4F9rFOyHPelPK4VVDH0GlkV6/CgqyGI8MGtID2hT
RkRS2lk6aBr+PnyEuW2Pal+tkFC112ltWC2By2fwrFYGVSbZKnWLlkeKyyFsbjiPoX0P1TpjwByZ
Zu98z5HGHPIOj6lgwoRzHFHr8isZwIKjnYruSJwOXYoWFBKr5XVdgX5r/lFAG7+zp0exXpIHLLAN
EhQYWVudSErgyAYMl2cUMzZ91ZXQQBlQeFwuoWKE2b5sl6j+2JmD+HQplOl+RJI8ti7/D2NTNu9O
ASHIwmumzalAzHSkoX1X0Aa5SKrE4URiNisOaLAruyRNPA3lnnFN6cdx9+ktVszD3b4bU5nIDwed
seaMPOZ4qNmEOIBnFuHm4ot8i1L5/WXT4frFlx16a0bWCAVlCKY/Lif+E670yVBHfDH7UGaltl3b
j94nTe5Jeh1JcyMlIGzjhrFnkj8XRgXaDzPSgish06qC4QObAv4qO+25j0a+RNKyjMBeB8QSWiFv
+8PioerZm3ruKQmvRLooQP54giV3vv3GlwX4F9HjAPywkoTK3anjQBNEt94koKN1z+HOO2Di3J5U
xKJ9G6VX0cXILA/ELXuLOtAVNd0F4B4TAHYBwmWmuyAmQzBtFW19F+Ww5S54pAazuQnrk5ZG73V/
fctq4KQTTWt6IGwfIJ6PRdzWFLCe2tBued8ANvXhPcJlLmWpKx+5tLGPCQTDohMJUNrU4UJvZVPc
hrNP4Bg2VzYTDpN0Di/QZrn6ERT7iopBzCOxeQsZ3a2xfOxJbSYQFsbm7BhpzGJPP9mKKMjKbwaf
qWo7xu4mHIr1t/Ytst/6tFLFglfE7p3u1j8L1DS74+uBYWLiE5ZZa0sxeesM3pH8fVvtMeKmckit
ImanbO5qRtgXLKFKHr4D+YhnC6u31NSvx1dJy/8sumPa7MDzZXSTUBy1aEsIoHPLv1O6/Uc1pZgX
iAZRPdsZ1iW6uJrxxltt+BtSOzOW22CQP134Z/RzzdNxcAhrGucB9Clg3zVZM2mPRYtc6NQWjH9J
+Ag7CKgDYB5fJvmbWe3x2MeuFGP9G8Ns+sTZlVa43UCn1Mrc2KNUsQfQhwJh57RuryrkKDG17CFm
fRN+FlGmUw7BIq9rrdjLg/gTOnp2PT+PcU6YB6qViUrg9zd4iWgc0sQfv/D1t34xVyEXBIEnGa7i
6azDuuvHKU9J1o+iVAqNRO5l/9FKlu/9uih6tK+8Tf5HaITU8qr+6Dk1flEOk0PGhoQef1kFO+jN
j/MMIxC7OJqrvaWm75CXZBXC1sRwhLawIZbEaqw28rV7oZXx/SV2+5Yd4GC9DVARnd7WW1jyTG6q
cZwysMBaXgZBMzoyHjlxGsDBs/B1/PfHzKUVvcIvOrX1Wk6f9VmnORxVjOUHcTOSEWh5Z4QT1P2S
qdIqJu3vuwSUZaRlWalBd4iyMqdRsyQ+6kxx3C9JPPSr+Go0h0s+uIbU/T5hBAnq8j2NCsX51MI+
sAfznuS2KAGR4Cyxd5tsCoX5mcdXX0RJX7IJU2Sfz7LLoaXSjs4s8y6lgKzh7bJw9SMszKVsxTUD
hs0v1RHttRwu4UVqUcGEQIeDC1wNghb8xduTPtGoYvUFwON8l1Y0RJKLluu6cmfBWok/PAPaaUbU
5B49grwrrdU9ZWkB+NNXdzqxTB+gD99FhfOITH2lm8PkjcaPcm71xpIblNYVxKMyrJC7ZYn+UvYX
eDrLnv/4RtNR+LMgxAbCaY0nwA0fBiFK9XDA5+lKcN/843sds3paD6+WDwj4s722bAHf/dRWCfI0
8qn8azQk8bOGD5y+3IXx91uWrQrj9OcaEiVcCucELjXwfjc0lyadISOTEnIQRgwM9l/E5s0eeBsu
hQ4w/RRULZULVqAwZe2fzdJgPPFKOEF8wE9Xusk8NEfDDwqtK/7Qxom6HQp2AvwnWpOsO7FLRa5V
b2Z2/RDEbHm2ovqwFilvompuehdfYECCjvSNg94yg8OQPR5nUsu7bGVvaKWTN3uZMNupHZtrbuhg
3MJ8kx/RWotoAgCO53XzkiEru4jK2gJPJGMZYeStO6Dv5bj+KRALfRwffA0nWhV/1NLbVbGtK8pf
X+/4WyEsbd1rESVQP8secaqL82Li37mw4rLcpB43qGQjN0st6YIxDIVU87LtTtTVXRDKDk0cMOKx
Xc3qXyDVJxc1txkRnZh5BDz4Quwae4fwC+eYzReESfBmABFqGVJSQYv/ZFh3xP6YOV+oXH3p2iOP
acB786RpWvJy83bnEMPHtXSVgpPQrjc4Dvg6PeHOCxFRXWlY8kLg1g4av0RxOM4nGnIHOSldVTzI
B6RnD8zyZ360b6nwtwMU3q0QAAyuk/eJeJX2rF+3PozleQAZUBgUr2Iy66Pg7n+CRobHboujbPaW
W23rQB+mobQcssKH2NTyCyfvYZA/VaYj8BST/QjxxDVeqL5Tdh9M/zLLTLxdVN+c0xEHAquvD6yJ
spjqREDRozeG+H9ke0Igpo4+6hey2WNJB25kDGXXuxVpLg1Mlk3xHIgHjzbGsLXWW+z3voLMIUkL
//lVIUOCtYpzEscx/ANBzxQVrHdIi8pdSD7+P/uHSkruz1qRePyefVD85DMFsiJIt33qvyI/52ny
HHZA3ZtjLRNLVc1nE5ut8wQhNuaLn4UEzn4tdU4+T3i0T6Dsu/27JWUHi/c7/CFX5RmJvR7Pvy66
Lfy83tewGic+12TgRB7/Z3LDLUz2T7RFS0Ao52+H1nSgwI54ucZaqAGMI+SKuvjKM7RqGriaIw4N
Ztkmq+2IMSs66j/AoXs6eW4wvl8ISNpt+tg1RzJTylIEUpH65hbtrbnnFvHMoWir56v+g+HCzXb8
Wc+EBImLgqv0vfISNVDFX9zq9e+ODCC+5JrMUqvVstTgqYulxn62jkrqIxrNlyL8gjNwxo4Z/rn8
pvNvGkmydCEVEN6rqnZmwf8eeC5pcWd2dllbHsgg6s0x//vrOBnDrIFpwLuV1dDshJevGWyqkBXF
C5PmBAUWa+pWrNvjLe6/TZ/w9NWZxh+RoR1rXnB9uXIpf2v3hEfr0kXqSamuNuX4481Encp4Msik
bOHtRUS04URh3Zx4pOPnl0/7FKxM18H0E1ThyaKvTWdO/+8greeZrOwffZ0u4xoov1++fi1WBC+W
i9Cl0e1wbYIKDd+zfbcfdH1/eMQmJNvZO2I08sU6qlsvCyO2XtBpQozbBuMCuW+G40wSP2lV1LEp
KdR4MxI7NKGXzW8DoJztBtx3I4YFkwNl7866T+ndmefk3sH2uzy65sMERG27+1qZhZsjxSvx5JwA
mVU0azgbJN45k2fW3scgHGYYy//emw1mSjQGTe/AoThe4ER1tXlb5Uj+yN/Yah9oat/Df2vXmYrv
Qhlmuzc+fNIRf9sJbhb6rycwR/yG4jGdtRaCxEZ15yRu6PQxxVJFHMt+3h/8+2AeEH4Lv5vWGcNh
0bzphReRZ37V7H4mUyNpbcQ95MAuECM47pDwagkXu1ooNjPCvQytt6caIP2+G6L5tngWITHPaqHQ
SEeAKq5bEoT8Wr0ubQFuv1/Ch3apPsXGd2UxStWDaalLr2rFjXYujytqHtVHm5HL5JS/TV+fbwkn
ZS63EFnd22m2aLVxQUlHVJjXDBjHxYxKijCkDtBJPqSNVnCr7T5FvrWhwuhsrqtIPq3I9oA8lygI
B6Qtgr71n3/0Z/OK8gnJ5cgIU4aijy1SMaVFgyxq0C9a8oEzLDlkpOG5jCVjwLdSIAPdOzKUKAXG
/xtO32EkFuaC3X+UIFBlKM1aMlKJw3BFWCK+ACgF7jj/w6bgqKb6Lv6nXNINbj/geWp4VJmwOmWs
pkviEsNgoNa8bEjVi5qfrhLGJS5tkEQWFGEPs1um+K0Vtye1awNcPBUN2NWXhqrmn9iZ8NLG5d94
CoX8HeUUlrgVnGSxSoyAvmRBKl9sKhYhsbErqRnCMaznlCFEhREVJQXiUEMIsJdRhS7O20px1HKu
BT5kZa1EQ8tyIb7BowIGqadL3OCvAhyQ1j7EG8waL+2kvjUu5O2e1rh5Rk0OW54Uv81HMARgVJ6P
ZD4c1mXl9WRmqeB7uCalQg4Imcechnh3p977vnI+vL3gs2USW6sbzY95J0aJ3zZpbv9dDsn7Uvma
AiJtyWM18JF2luTy6alg+abq9T+KfCREB6o+0YpOhYKkrSOR3G1s6CwBHNKnxzcgab+zits0kQTa
7ZpIaallAaYZBljHXcgpd95+e9g2Vli+xySNJYpRxx8KoGGT2lQXT0/BUGZX8qx+j1d78f7KIF9S
FHACB6IgecIEbd6tFmUrzlKv0cl94HWw5ZP8f2MMiUHf/SXyCLFZ6W79dpYvc3VuBH4RIM/IzuTJ
vrRyzyXgZU23W6H1YOUhd0XVo/ZdpDX9czewQJSl6LD9qMu0A8Gx04lsZEG1FewWkMtJRDZJGC6D
X5t3AMucGmLqVNj/jjpRJukA5ywgI85VNIC9nnMr6dtVORH0erMhFysSnAN8IlvAHBlpEFhXiICe
6QFdXoy4uuol1jzFFGKh7rlf0zifiR+gOhrfRXiHGUrp5G/Edq0F1dzJ22y6VgIXD5IK88Cs0sdH
ZL3A+qUaLCldJUo+moApltkVT99ixM6qHqgrPkbqP/WQc/ZROKS8UwxW0ekNdDSYmonMdI/N6nHY
Wcye9v0lPpzD5mZhSFMHWrUNhmvTGlMw5FY5EKNht8whcW6K8msQCCcEcj9iLybeuuHTmIx59asY
tQWvwj0OQ0U+IidswvdW7eQguGUf4e6I1cqRgnWhU79FcsxAkTepOEdSkrjv7FvrsspgkbvWRnaO
jiuszeyL0vQ7ZCdVxq7K/nAfxiOtTUKQ9x7VK5krOHqDdgnG44OP1ezqDtdqemELQlx0bXzn4AJd
SuTpRGMj1wvIE/PHE8wfj8khDIM+p1E4+g4d7jWygEMu8rajI8o0RV/2FicVDNaP4O4hiyneqDL6
tdHe1idAl86HCVPR00kusNmKQKI1L3/EweUHhuK8QPWFHW7lOWZ8kUbKElH9Af2XKrwt68u1tPQ6
NHVW9R/ZUAo8ZiSNeam53CNLfKCsZeg8AP81jih56kLj+5ZUPAePpuEzZkSt1Tp+W7mgFN76kjUy
6aco2c8//PwGzAM1+kA/HdoFOyTAgpNaN3bvuXw0nbYX8uaEx+jh5cPw7o3ZQTXJVTttsg10NKuT
okt23aRvxKn6UpmVs1akQ+6xm2dOiu/2kgL96AxfvavWAlq+QTa+UluZa4GDdEAY677g+0MSKn0U
n9sypluv9GItPi+qc7y/Gf8KES1kTRTkQ3Uw9rH+UE0HpNbSG/wY3s9OoT9HWRTpStRdTcedQlTw
+HUkgAZDaObIiFr80GqDbxg6p9FAjyzvwOr+Ox6KUtFvCDIZzpUA0xw6l4QgVxli9ZVFay/Wc/q6
t11yvfxqtQOk5BTNyJBfM+46IQ4dTTDHMKiiet4gUSfgdVfe3jD8bBSStXtR/Co2tTa0GoKpI/Lr
hi9A2SydtGAZK4pfoBXyDHWq+OgRdQ+DHng9ALj28PFEbyngbzrzFm9wZUzH2/52fd+WXYMskxHj
wUkhA3UdMAcNKNXULmvOCYs/ZVdtHawo57vOq08t08fBZ/9CPZrG1OKmdjHo40b25m5eyE0TJXgc
WxT9tC8Q41qIR7TagZyyIRxwWqNjbc+goxVDteKD085mA6EXX1/ZbdCsHQFMPbwEVK376A4Atoxc
ABaaJ47y3qzk5U+ExxQGUAEF5OGFcRvSwLU8EklxWw0ZEFysqd5YtUrynQUBbmC4cYIElRIojdjh
g5VbDVALKbeQwzUQIpTPYOh4c9S91Bl6B9XMAIG9iiVpv8db121qFQAmQ+plpFJ3AHzDlrlDVMx1
7q2et8dG+XqeR5S+fCTjihGqnY7+xQ9RMNmEN5MQZqXY99Z5tva/v6TToOqUM0surC9oeLtGQcOs
IRm1iYyzbqn41twQcZ5+nizt50EirYmE67e3m3jB9ObCxix8Tc2W81NRX4w6JwFoIV1P3TGUcWO/
cZwtBnbOLVvoXqpcJTn95nzgPQqIzJLUDf/al614vyuiUxcxz+NI2TFGVQu5NrX1oYWzazeHOIlg
6r9SxYTlCstXMumWD/31WsjepBMcrbH5sXsa2CphAwhmvRiAJg50vjnW22Pa36AyYv6BDPuVfvQI
/LwcQo5cN0frWtWWgH7vpSQZQgsA8o+LEG4TtpycZK3fau6i80ADuhSVKF/KVAaEq8j7YaCWWX3a
vgierdXH80c6SA4OZlHqeQw4nssi/2ST2spyDEDHJ3X7ni5A84Ow1YyQGBJzH809ZG3l12WHyEHf
91bNEYHGpmQoKGdGvkq269jqBMq3pqdjRqh7bcyDto+sXYUq2bHoFO9ItYEZ28SjV6JHxTfblAje
oD2GYVwtahpyS62LAGKpLJd4r8uVjOGt+L7gMoBlohjckEVME3be8+r/EwJ7y5RzyA13W1ppXHTA
gY5dNBeuMLme+HieunY8qFPaub/HC01QpcGzaZDEmyAjs76IGS4SLpdp+vXQ/x2fAQTO1eu2zMuE
+WcvpbeN58yv6PB1dnnKikTCl3OtY6na4a7f7s1snkrbDXbZbHCwNjciIPZiEYZDpa5F/cdOaYoZ
0oNY6jzgnBcqpZl+fJJ4Rr8EoHoFtYmE3lsvqgmST4gpEyPJEtrXTQO/ga1BDg0Z2TqC6j3TPr78
+iYwGAy27gtsdGPTOhbisRcScT0chNuFaWJYA0QJGfCBCHXt5knE9gGFnMCZF59BHaBJKhnmYjsa
dFvndiWVuWL4wDC+i3EbCeU05IovzBsMqyVHkCmFb8WS1JDFsbiKmi6x1mg2BsD7arMJtJ9dCoFT
SKEL8cRgDmem/GZKEAvxqwgqGmQ//nAPAhVt0wbI/rXw1JAu5pr8W8V6kmK65J0TH/7Uvx1+VFQR
79cpgZsZ9mQbiHXbs5AhckryyeOc4VdUuscra27EHOZU2DAaHwmCIHOuZVPKMxTLcDBD7o7kcS3j
XNua7s//qNHTyzVsXBF/zodR/X8PAvtjJBPRF8exXCpLcqk/qS21GPQS6aASQwakjOWk9eW2IztE
Ys6YLNI4qikEiyFiJWpG18hzT0SZ8qZLiVdoPA/7uVwL2bl5HC4CsANr+SS9Z97gfzjhAxle4uAb
u7WrcyIVP7HaEJyR3NnVetjcqWFEDbRLrz8L/owjO9wrJKq4tCjQHI8bEKSfKq632sVLRjlEyFY1
qUOreqfPowycrCVFZiLnZmkTC//froAzyBy6HUgctAGSRknWVRArxh7vrV77z6yBC1Mxru68fWep
npkws0/0TallVXp/3L1usRnIFAVAFW52TRqPfiCEIQir6GVUrtXns0088JbfNAp9dz9zmVd8CMTk
XN75lSLZowNnsCawjFlJEo2fFlu+n93kVHyHPBmHnyvitp/ht23vKsOX5ZBZcdIQbc9EuQD7cb58
Lfv4bdHHp2xbBzcG0uDiIGJYoAdNKGnWD5bCFCWVdTXP24DV/JhxkKzFx4EKzJLvYR9JN9R51AcX
tDbeRozGG5lwNUXN1WGR6iwbuyjfed6ATYJCQd7M3CThUnst5QyKmbxIQ11tggl6NiehIkM/Z9ui
PczDekzKpp9FHoK+E9P8QH+Qjx/d1YGdBmO0oGr16fMlNb+azrBVafBl6VRQcwrjhnbi3d/T2EQX
FxAEftiQb0IkmcvfguFiH8Nmdw49AFa6147VUjHnjlKqY9b/ImR8rEOmCSFiZvPTqKxTmmcsKFX7
6wnKTfVp8IB0J02DKq2IB02J6c/h+kDU6UwZca50rdyGzX3auvrIHO6Edavmc9EYidw5VFWyJRDb
tOcH8stLD7ELOT6rxEYApf+3FBRxE/0v6NdgYcJQS98IMt/NS4iZSezbkzyBHPASzYL95Pxr89x7
K6OMQkTd+qmcD1Faxg67nenagziN5I7vfSXtXkOKZuUNoZGq6Aj0DeuRUMshIhUcQ9PGeDDFRv27
0/YjAgW3gTe9eKZJubIMRXxUSexfVz8lzjm9XoIGmDGc2XekTQxV9hceOeGBziG47fmcoOVadIW/
UdRsDjypLlZGcipRnbcIqCurFvAFPGtgVic26IW81nOraA8mlagIqBFKtkrCiFxrGFnjwhl39Xir
Ij+FhcrgFjJRbtYqnY+W42qPy6P3RZTcnlQyUv/RWZnJm2IGY8ZNjYM+YVwipacUMx7VGikrxt7l
kB7YvhCvfkXJphOa41NQ0VfyZaRdun1q+b3ytIb++nwdRXLPRJbC9ShZz42BvMSdQuof0OIB0gdw
jUal5TdkEdU3gdapanWhAj//Zahaz0wmKC2lnzwNAinPuFC9sJWN+cobuOgZqJugzd3gm7cNHMiz
BFqe7ONnnoXWxGakAfkNk+yDg0aOBlBv3+OVed/MztOAf+Tk1TknqfBXSMQsKjd7K9/tBhU8zNuZ
dJ4mG1F4woFPPawjHHf+ym84Ypa0C2F0f35y6KQitAyx8UGJntK/NRAA+pn/c5pjtwr4GHjcKjkr
clS4EoThyOMgsAwci2akUYsJJ7PPHwkkPnE7ggvUexIkpq//AWQsIB4VyzWDPaSn9rp4wx6Cy5Aw
Bro8HB2gl9P1vGY9Jx++ZqFHB1GFL/iMA15/ZLnmb7q3PfkgR6wOBEPV+TPUV54nS9VaTALUwZ6T
zlTv/7LlYTrsLa2ya9BdBEmFp0HQvp+ECvUXQzPPG9Zm+7wvGQhWAQ97RxswEmPah0p1WIXIWDJv
VB7CaKtqg9Jt8D9fG3FKRKzsQxpfcfo26gtSHD6+5vVueuPowYl06tF1ej+gl5YXHtHu/rBUV9JJ
5RHKsBCHaTws9gESCPBlMsKAIDCm8vL3iEWqkpNnanlq2WavbiuL/QavlEgolVGYByGBJCSRt1rq
ynXZOh9yNYVPK0kxT+qWO/hyFznL2XflG41SHrbI2opyhmpmdfCtSPJ9gyo2LVuuHi3FK+Gll4vu
Ex8RhyNieFAlXPP2CbJX7j/cioecXB89klrlnxkvjUN9E9Tp9ootr6wxjE/l56QvnePuTaHRaRoM
vCX/iNISo4FjYpOno4KwwimbRfDazu7bXGZ2CdCEq4yEmIm8bU8OR/p/isDZsKrdgAi+RiY0SiI=
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
