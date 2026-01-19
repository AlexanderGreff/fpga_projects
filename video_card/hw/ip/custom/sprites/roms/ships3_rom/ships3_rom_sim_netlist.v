// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:22:06 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships3_rom/ships3_rom_sim_netlist.v
// Design      : ships3_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships3_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships3_rom
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
  (* C_INIT_FILE = "ships3_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships3_rom.mif" *) 
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
  ships3_rom_blk_mem_gen_v8_4_5 U0
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
y920SITeZrnsx2l9LsIRmo1deA==
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
