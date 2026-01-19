// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:05:49 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships1_rom/ships1_rom_sim_netlist.v
// Design      : ships1_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships1_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships1_rom
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
  (* C_INIT_FILE = "ships1_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships1_rom.mif" *) 
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
  ships1_rom_blk_mem_gen_v8_4_5 U0
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
1Bdj6LNTxaI7ADol/T1vCsPMuQ==
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
