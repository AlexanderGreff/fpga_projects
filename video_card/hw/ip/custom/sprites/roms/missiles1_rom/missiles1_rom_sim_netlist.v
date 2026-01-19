// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Dec  4 18:35:01 2025
// Host        : alexander-LT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/alexa/ip_repo/hdmi_text_controller_1_0/src/missiles1_rom/missiles1_rom_sim_netlist.v
// Design      : missiles1_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "missiles1_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module missiles1_rom
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
  (* C_INIT_FILE = "missiles1_rom.mem" *) 
  (* C_INIT_FILE_NAME = "missiles1_rom.mif" *) 
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
  missiles1_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
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
