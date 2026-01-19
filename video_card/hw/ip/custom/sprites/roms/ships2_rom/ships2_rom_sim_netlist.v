// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:18:22 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships2_rom/ships2_rom_sim_netlist.v
// Design      : ships2_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships2_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships2_rom
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
  (* C_INIT_FILE = "ships2_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships2_rom.mif" *) 
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
  ships2_rom_blk_mem_gen_v8_4_5 U0
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
cwSSlNx4RcVw5Zhu4QVywrYA/A==
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
