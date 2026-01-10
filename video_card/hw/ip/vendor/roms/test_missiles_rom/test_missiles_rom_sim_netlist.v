// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:33:17 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/test_missiles_rom/test_missiles_rom_sim_netlist.v
// Design      : test_missiles_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_missiles_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module test_missiles_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [5:0]addra;
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
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.210399 mW" *) 
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
  (* C_INIT_FILE = "test_missiles_rom.mem" *) 
  (* C_INIT_FILE_NAME = "test_missiles_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "50" *) 
  (* C_READ_DEPTH_B = "50" *) 
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
  (* C_WRITE_DEPTH_A = "50" *) 
  (* C_WRITE_DEPTH_B = "50" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  test_missiles_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20000)
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
