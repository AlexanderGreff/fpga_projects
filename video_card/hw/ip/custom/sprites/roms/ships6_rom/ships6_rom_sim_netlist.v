// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:27:37 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/ships6_rom/ships6_rom_sim_netlist.v
// Design      : ships6_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ships6_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ships6_rom
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
  (* C_INIT_FILE = "ships6_rom.mem" *) 
  (* C_INIT_FILE_NAME = "ships6_rom.mif" *) 
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
  ships6_rom_blk_mem_gen_v8_4_5 U0
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
v25RT9Ns+dMethgBT4k4zVl5xQ==
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
