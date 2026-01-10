// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:23:56 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships4_rom/ships4_rom_sim_netlist.v
// Design      : ships4_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships4_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships4_rom
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
  (* C_INIT_FILE = "ships4_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships4_rom.mif" *) 
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
  ships4_rom_blk_mem_gen_v8_4_5 U0
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
gwkL8qO+V2KKQYzRcc7EZcnujQ==
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
