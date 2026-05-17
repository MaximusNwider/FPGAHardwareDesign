

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library blk_mem_gen_v8_4_4;
use blk_mem_gen_v8_4_4.blk_mem_gen_v8_4_4;

entity blk_mem_gen_0 is
  port (
    clka  : in std_logic;
    ena   : in std_logic;
    wea   : in std_logic_vector(1 downto 0);
    addra : in std_logic_vector(3 downto 0);
    dina  : in std_logic_vector(15 downto 0);
    douta : out std_logic_vector(15 downto 0)
  );
end blk_mem_gen_0;

architecture blk_mem_gen_0_arch of blk_mem_gen_0 is
  attribute DowngradeIPIdentifiedWarnings                       : string;
  attribute DowngradeIPIdentifiedWarnings of blk_mem_gen_0_arch : architecture is "yes";
  component blk_mem_gen_v8_4_4 is
    generic (
      C_FAMILY                    : string;
      C_XDEVICEFAMILY             : string;
      C_ELABORATION_DIR           : string;
      C_INTERFACE_TYPE            : integer;
      C_AXI_TYPE                  : integer;
      C_AXI_SLAVE_TYPE            : integer;
      C_USE_BRAM_BLOCK            : integer;
      C_ENABLE_32BIT_ADDRESS      : integer;
      C_CTRL_ECC_ALGO             : string;
      C_HAS_AXI_ID                : integer;
      C_AXI_ID_WIDTH              : integer;
      C_MEM_TYPE                  : integer;
      C_BYTE_SIZE                 : integer;
      C_ALGORITHM                 : integer;
      C_PRIM_TYPE                 : integer;
      C_LOAD_INIT_FILE            : integer;
      C_INIT_FILE_NAME            : string;
      C_INIT_FILE                 : string;
      C_USE_DEFAULT_DATA          : integer;
      C_DEFAULT_DATA              : string;
      C_HAS_RSTA                  : integer;
      C_RST_PRIORITY_A            : string;
      C_RSTRAM_A                  : integer;
      C_INITA_VAL                 : string;
      C_HAS_ENA                   : integer;
      C_HAS_REGCEA                : integer;
      C_USE_BYTE_WEA              : integer;
      C_WEA_WIDTH                 : integer;
      C_WRITE_MODE_A              : string;
      C_WRITE_WIDTH_A             : integer;
      C_READ_WIDTH_A              : integer;
      C_WRITE_DEPTH_A             : integer;
      C_READ_DEPTH_A              : integer;
      C_ADDRA_WIDTH               : integer;
      C_HAS_RSTB                  : integer;
      C_RST_PRIORITY_B            : string;
      C_RSTRAM_B                  : integer;
      C_INITB_VAL                 : string;
      C_HAS_ENB                   : integer;
      C_HAS_REGCEB                : integer;
      C_USE_BYTE_WEB              : integer;
      C_WEB_WIDTH                 : integer;
      C_WRITE_MODE_B              : string;
      C_WRITE_WIDTH_B             : integer;
      C_READ_WIDTH_B              : integer;
      C_WRITE_DEPTH_B             : integer;
      C_READ_DEPTH_B              : integer;
      C_ADDRB_WIDTH               : integer;
      C_HAS_MEM_OUTPUT_REGS_A     : integer;
      C_HAS_MEM_OUTPUT_REGS_B     : integer;
      C_HAS_MUX_OUTPUT_REGS_A     : integer;
      C_HAS_MUX_OUTPUT_REGS_B     : integer;
      C_MUX_PIPELINE_STAGES       : integer;
      C_HAS_SOFTECC_INPUT_REGS_A  : integer;
      C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
      C_USE_SOFTECC               : integer;
      C_USE_ECC                   : integer;
      C_EN_ECC_PIPE               : integer;
      C_READ_LATENCY_A            : integer;
      C_READ_LATENCY_B            : integer;
      C_HAS_INJECTERR             : integer;
      C_SIM_COLLISION_CHECK       : string;
      C_COMMON_CLK                : integer;
      C_DISABLE_WARN_BHV_COLL     : integer;
      C_EN_SLEEP_PIN              : integer;
      C_USE_URAM                  : integer;
      C_EN_RDADDRA_CHG            : integer;
      C_EN_RDADDRB_CHG            : integer;
      C_EN_DEEPSLEEP_PIN          : integer;
      C_EN_SHUTDOWN_PIN           : integer;
      C_EN_SAFETY_CKT             : integer;
      C_DISABLE_WARN_BHV_RANGE    : integer;
      C_COUNT_36K_BRAM            : string;
      C_COUNT_18K_BRAM            : string;
      C_EST_POWER_SUMMARY         : string
    );
    port (
      clka                : in std_logic;
      rsta                : in std_logic;
      ena                 : in std_logic;
      regcea              : in std_logic;
      wea                 : in std_logic_vector(1 downto 0);
      addra               : in std_logic_vector(3 downto 0);
      dina                : in std_logic_vector(15 downto 0);
      douta               : out std_logic_vector(15 downto 0);
      clkb                : in std_logic;
      rstb                : in std_logic;
      enb                 : in std_logic;
      regceb              : in std_logic;
      web                 : in std_logic_vector(1 downto 0);
      addrb               : in std_logic_vector(3 downto 0);
      dinb                : in std_logic_vector(15 downto 0);
      doutb               : out std_logic_vector(15 downto 0);
      injectsbiterr       : in std_logic;
      injectdbiterr       : in std_logic;
      eccpipece           : in std_logic;
      sbiterr             : out std_logic;
      dbiterr             : out std_logic;
      rdaddrecc           : out std_logic_vector(3 downto 0);
      sleep               : in std_logic;
      deepsleep           : in std_logic;
      shutdown            : in std_logic;
      rsta_busy           : out std_logic;
      rstb_busy           : out std_logic;
      s_aclk              : in std_logic;
      s_aresetn           : in std_logic;
      s_axi_awid          : in std_logic_vector(3 downto 0);
      s_axi_awaddr        : in std_logic_vector(31 downto 0);
      s_axi_awlen         : in std_logic_vector(7 downto 0);
      s_axi_awsize        : in std_logic_vector(2 downto 0);
      s_axi_awburst       : in std_logic_vector(1 downto 0);
      s_axi_awvalid       : in std_logic;
      s_axi_awready       : out std_logic;
      s_axi_wdata         : in std_logic_vector(15 downto 0);
      s_axi_wstrb         : in std_logic_vector(1 downto 0);
      s_axi_wlast         : in std_logic;
      s_axi_wvalid        : in std_logic;
      s_axi_wready        : out std_logic;
      s_axi_bid           : out std_logic_vector(3 downto 0);
      s_axi_bresp         : out std_logic_vector(1 downto 0);
      s_axi_bvalid        : out std_logic;
      s_axi_bready        : in std_logic;
      s_axi_arid          : in std_logic_vector(3 downto 0);
      s_axi_araddr        : in std_logic_vector(31 downto 0);
      s_axi_arlen         : in std_logic_vector(7 downto 0);
      s_axi_arsize        : in std_logic_vector(2 downto 0);
      s_axi_arburst       : in std_logic_vector(1 downto 0);
      s_axi_arvalid       : in std_logic;
      s_axi_arready       : out std_logic;
      s_axi_rid           : out std_logic_vector(3 downto 0);
      s_axi_rdata         : out std_logic_vector(15 downto 0);
      s_axi_rresp         : out std_logic_vector(1 downto 0);
      s_axi_rlast         : out std_logic;
      s_axi_rvalid        : out std_logic;
      s_axi_rready        : in std_logic;
      s_axi_injectsbiterr : in std_logic;
      s_axi_injectdbiterr : in std_logic;
      s_axi_sbiterr       : out std_logic;
      s_axi_dbiterr       : out std_logic;
      s_axi_rdaddrecc     : out std_logic_vector(3 downto 0)
    );
  end component blk_mem_gen_v8_4_4;
  attribute X_CORE_INFO                                : string;
  attribute X_CORE_INFO of blk_mem_gen_0_arch          : architecture is "blk_mem_gen_v8_4_4,Vivado 2020.1";
  attribute CHECK_LICENSE_TYPE                         : string;
  attribute CHECK_LICENSE_TYPE of blk_mem_gen_0_arch   : architecture is "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}";
  attribute CORE_GENERATION_INFO                       : string;
  attribute CORE_GENERATION_INFO of blk_mem_gen_0_arch : architecture is "blk_mem_gen_0,blk_mem_gen_v8_4_4,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.4,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_XDEVICEFAMILY=artix7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_USE_BRAM_BLOCK=0,C_ENABLE_32BIT_ADDRESS=0,C_CTRL_ECC_ALGO=NONE,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=0,C_BYTE_SIZE=8,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_f" &
  "ile_loaded,C_INIT_FILE=blk_mem_gen_0.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=1,C_WEA_WIDTH=2,C_WRITE_MODE_A=WRITE_FIRST,C_WRITE_WIDTH_A=16,C_READ_WIDTH_A=16,C_WRITE_DEPTH_A=16,C_READ_DEPTH_A=16,C_ADDRA_WIDTH=4,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=0,C_HAS_REGCEB=0,C_USE_BYTE_WEB=1,C_WEB_WIDTH=2,C_WRITE_MODE_B=WRITE_FIRST,C_WRITE_WIDTH_B=16,C_READ_WIDTH_B=16,C_WR" &
  "ITE_DEPTH_B=16,C_READ_DEPTH_B=16,C_ADDRB_WIDTH=4,C_HAS_MEM_OUTPUT_REGS_A=1,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_EN_ECC_PIPE=0,C_READ_LATENCY_A=1,C_READ_LATENCY_B=1,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=0,C_DISABLE_WARN_BHV_COLL=0,C_EN_SLEEP_PIN=0,C_USE_URAM=0,C_EN_RDADDRA_CHG=0,C_EN_RDADDRB_CHG=0,C_EN_DEEPSLEEP_PIN=0,C_EN_SHU" &
  "TDOWN_PIN=0,C_EN_SAFETY_CKT=0,C_DISABLE_WARN_BHV_RANGE=0,C_COUNT_36K_BRAM=0,C_COUNT_18K_BRAM=1,C_EST_POWER_SUMMARY=Estimated Power for IP     _     2.729207 mW}";
  attribute X_INTERFACE_INFO              : string;
  attribute X_INTERFACE_PARAMETER         : string;
  attribute X_INTERFACE_INFO of douta     : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute X_INTERFACE_INFO of dina      : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute X_INTERFACE_INFO of addra     : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute X_INTERFACE_INFO of wea       : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute X_INTERFACE_INFO of ena       : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute X_INTERFACE_PARAMETER of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of clka      : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
begin
  U0 : blk_mem_gen_v8_4_4
  generic map(
    C_FAMILY                    => "artix7",
    C_XDEVICEFAMILY             => "artix7",
    C_ELABORATION_DIR           => "./",
    C_INTERFACE_TYPE            => 0,
    C_AXI_TYPE                  => 1,
    C_AXI_SLAVE_TYPE            => 0,
    C_USE_BRAM_BLOCK            => 0,
    C_ENABLE_32BIT_ADDRESS      => 0,
    C_CTRL_ECC_ALGO             => "NONE",
    C_HAS_AXI_ID                => 0,
    C_AXI_ID_WIDTH              => 4,
    C_MEM_TYPE                  => 0,
    C_BYTE_SIZE                 => 8,
    C_ALGORITHM                 => 1,
    C_PRIM_TYPE                 => 1,
    C_LOAD_INIT_FILE            => 0,
    C_INIT_FILE_NAME            => "no_coe_file_loaded",
    C_INIT_FILE                 => "blk_mem_gen_0.mem",
    C_USE_DEFAULT_DATA          => 0,
    C_DEFAULT_DATA              => "0",
    C_HAS_RSTA                  => 0,
    C_RST_PRIORITY_A            => "CE",
    C_RSTRAM_A                  => 0,
    C_INITA_VAL                 => "0",
    C_HAS_ENA                   => 1,
    C_HAS_REGCEA                => 0,
    C_USE_BYTE_WEA              => 1,
    C_WEA_WIDTH                 => 2,
    C_WRITE_MODE_A              => "WRITE_FIRST",
    C_WRITE_WIDTH_A             => 16,
    C_READ_WIDTH_A              => 16,
    C_WRITE_DEPTH_A             => 16,
    C_READ_DEPTH_A              => 16,
    C_ADDRA_WIDTH               => 4,
    C_HAS_RSTB                  => 0,
    C_RST_PRIORITY_B            => "CE",
    C_RSTRAM_B                  => 0,
    C_INITB_VAL                 => "0",
    C_HAS_ENB                   => 0,
    C_HAS_REGCEB                => 0,
    C_USE_BYTE_WEB              => 1,
    C_WEB_WIDTH                 => 2,
    C_WRITE_MODE_B              => "WRITE_FIRST",
    C_WRITE_WIDTH_B             => 16,
    C_READ_WIDTH_B              => 16,
    C_WRITE_DEPTH_B             => 16,
    C_READ_DEPTH_B              => 16,
    C_ADDRB_WIDTH               => 4,
    C_HAS_MEM_OUTPUT_REGS_A     => 1,
    C_HAS_MEM_OUTPUT_REGS_B     => 0,
    C_HAS_MUX_OUTPUT_REGS_A     => 0,
    C_HAS_MUX_OUTPUT_REGS_B     => 0,
    C_MUX_PIPELINE_STAGES       => 0,
    C_HAS_SOFTECC_INPUT_REGS_A  => 0,
    C_HAS_SOFTECC_OUTPUT_REGS_B => 0,
    C_USE_SOFTECC               => 0,
    C_USE_ECC                   => 0,
    C_EN_ECC_PIPE               => 0,
    C_READ_LATENCY_A            => 1,
    C_READ_LATENCY_B            => 1,
    C_HAS_INJECTERR             => 0,
    C_SIM_COLLISION_CHECK       => "ALL",
    C_COMMON_CLK                => 0,
    C_DISABLE_WARN_BHV_COLL     => 0,
    C_EN_SLEEP_PIN              => 0,
    C_USE_URAM                  => 0,
    C_EN_RDADDRA_CHG            => 0,
    C_EN_RDADDRB_CHG            => 0,
    C_EN_DEEPSLEEP_PIN          => 0,
    C_EN_SHUTDOWN_PIN           => 0,
    C_EN_SAFETY_CKT             => 0,
    C_DISABLE_WARN_BHV_RANGE    => 0,
    C_COUNT_36K_BRAM            => "0",
    C_COUNT_18K_BRAM            => "1",
    C_EST_POWER_SUMMARY         => "Estimated Power for IP     :     2.729207 mW"
  )
  port map
  (
    clka                => clka,
    rsta                => '0',
    ena                 => ena,
    regcea              => '0',
    wea                 => wea,
    addra               => addra,
    dina                => dina,
    douta               => douta,
    clkb                => '0',
    rstb                => '0',
    enb                 => '0',
    regceb              => '0',
    web                 => std_logic_vector(TO_UNSIGNED(0, 2)),
    addrb               => std_logic_vector(TO_UNSIGNED(0, 4)),
    dinb                => std_logic_vector(TO_UNSIGNED(0, 16)),
    injectsbiterr       => '0',
    injectdbiterr       => '0',
    eccpipece           => '0',
    sleep               => '0',
    deepsleep           => '0',
    shutdown            => '0',
    s_aclk              => '0',
    s_aresetn           => '0',
    s_axi_awid          => std_logic_vector(TO_UNSIGNED(0, 4)),
    s_axi_awaddr        => std_logic_vector(TO_UNSIGNED(0, 32)),
    s_axi_awlen         => std_logic_vector(TO_UNSIGNED(0, 8)),
    s_axi_awsize        => std_logic_vector(TO_UNSIGNED(0, 3)),
    s_axi_awburst       => std_logic_vector(TO_UNSIGNED(0, 2)),
    s_axi_awvalid       => '0',
    s_axi_wdata         => std_logic_vector(TO_UNSIGNED(0, 16)),
    s_axi_wstrb         => std_logic_vector(TO_UNSIGNED(0, 2)),
    s_axi_wlast         => '0',
    s_axi_wvalid        => '0',
    s_axi_bready        => '0',
    s_axi_arid          => std_logic_vector(TO_UNSIGNED(0, 4)),
    s_axi_araddr        => std_logic_vector(TO_UNSIGNED(0, 32)),
    s_axi_arlen         => std_logic_vector(TO_UNSIGNED(0, 8)),
    s_axi_arsize        => std_logic_vector(TO_UNSIGNED(0, 3)),
    s_axi_arburst       => std_logic_vector(TO_UNSIGNED(0, 2)),
    s_axi_arvalid       => '0',
    s_axi_rready        => '0',
    s_axi_injectsbiterr => '0',
    s_axi_injectdbiterr => '0'
  );
end blk_mem_gen_0_arch;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TwosCmplt is
  generic (
    Data_SIZE : integer := 16

  );
  port (
    A_IN : in std_logic_vector(Data_SIZE downto 1) := (others => '0');
    --B_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    --C_IN  : in std_logic                             := '0';
    A_NEG : out std_logic_vector(Data_SIZE downto 1) := (others => '0')
    --C_OUT : out std_logic                            := '0'
  );
end TwosCmplt;

architecture Behavioral of TwosCmplt is

begin

  A_NEG <= not (A_IN);

end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity SUBTRACTOR is
  generic (
    Data_SIZE : integer := 16
  );
  port (
    A_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    B_IN       : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
    BORROW_IN  : in std_logic                             := '0';
    D_OUT      : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
    BORROW_OUT : out std_logic                            := '0'
  );
end SUBTRACTOR;

architecture Behavioral of SUBTRACTOR is

  component FA16BIT
    generic (

      Data_SIZE : integer := 16
    );
    port (
      A_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      B_IN  : in std_logic_vector(Data_SIZE downto 1)  := (others => '0');
      C_IN  : in std_logic                             := '0';
      S_OUT : out std_logic_vector(Data_SIZE downto 1) := (others => '0');
      C_OUT : out std_logic                            := '0'
    );
  end component;
  signal ANEG : std_logic_vector(Data_SIZE downto 1) := (Data_SIZE downto 2 => '0', others => '1');
  signal DIFF : std_logic_vector(Data_SIZE downto 1) := (Data_SIZE downto 2 => '0', others => '1');

begin
  inst : FA16Bit
  port map
  (

    A_IN  => A_IN,
    B_IN  => ANEG,
    C_IN  => '0',
    S_OUT => DIFF,
    C_OUT => DIFF(1)
  );

end Behavioral;
