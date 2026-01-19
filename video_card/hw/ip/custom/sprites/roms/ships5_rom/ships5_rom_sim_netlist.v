// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:25:37 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships5_rom/ships5_rom_sim_netlist.v
// Design      : ships5_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships5_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships5_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_DISABLE_WARN_BHV_COLL = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.105199 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "ships5_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships5_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "576" *) 
  (* C_READ_DEPTH_B = "576" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "576" *) 
  (* C_WRITE_DEPTH_B = "576" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ships5_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18544)
`pragma protect data_block
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
BMch2izt1CP4C4IKvYR6BwyE9A==
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
