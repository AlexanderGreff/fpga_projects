

module hdmi_tx_0 (
    input logic pix_clk,
    input logic pix_clkx5,
    input logic pix_clk_locked,
    input logic rst,
    input logic [3:0] red,
    input logic [3:0] green,
    input logic [3:0] blue,
    input logic hsync,
    input logic vsync,
    input logic vde,
    input logic [3:0] aux0_din,
    input logic [3:0] aux1_din,
    input logic [3:0] aux2_din,
    input logic ade,
    output logic TMDS_CLK_P,
    output logic TMDS_CLK_N,
    output logic [2:0] TMDS_DATA_P,
    output logic [2:0] TMDS_DATA_N
);

  /* synthesis syn_black_box black_box_pad_pin="pix_clk,pix_clkx5,pix_clk_locked,rst,red[3:0],green[3:0],blue[3:0],hsync,vsync,vde,aux0_din[3:0],aux1_din[3:0],aux2_din[3:0],ade,TMDS_CLK_P,TMDS_CLK_N,TMDS_DATA_P[2:0],TMDS_DATA_N[2:0]" */;


  assign TMDS_CLK_N  = '0;
  assign TMDS_CLK_P  = '0;
  assign TMDS_DATA_N = '0;
  assign TMDS_DATA_P = '0;
endmodule
