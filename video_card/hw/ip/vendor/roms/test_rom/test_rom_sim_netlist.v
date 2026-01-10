// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:30:11 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/test_rom/test_rom_sim_netlist.v
// Design      : test_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "test_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module test_rom
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
  (* C_INIT_FILE = "test_rom.mem" *) 
  (* C_INIT_FILE_NAME = "test_rom.mif" *) 
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
  test_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18512)
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
