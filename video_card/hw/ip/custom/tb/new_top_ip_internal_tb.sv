`timescale 1ns / 100ps



module new_top_ip_internal_tb ();

  // module hdmi_text_controller_v1_0 #(
  //     // Parameters of Axi Slave Bus Interface S00_AXI
  //     // Modify parameters as necessary for access of full VRAM range

  //     parameter integer C_AXI_DATA_WIDTH	= 32,
  //     parameter integer C_AXI_ADDR_WIDTH	= 5
  // )
  // (
  // //---------------------------------------  

  //     // Users to add ports here
  //     output logic hdmi_clk_n,
  //     output logic hdmi_clk_p,
  //     output logic [2:0] hdmi_tx_n,
  //     output logic [2:0] hdmi_tx_p,
  //     // User ports ends
  // //---------------------------------------   

  //     // Ports of Axi Slave Bus Interface AXI
  //     input logic  axi_aclk,
  //     input logic  axi_aresetn,
  //     input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_awaddr,
  //     input logic [2 : 0] axi_awprot,
  //     input logic  axi_awvalid,
  //     output logic  axi_awready,
  //     input logic [C_AXI_DATA_WIDTH-1 : 0] axi_wdata,
  //     input logic [(C_AXI_DATA_WIDTH/8)-1 : 0] axi_wstrb,
  //     input logic  axi_wvalid,
  //     output logic  axi_wready,
  //     output logic [1 : 0] axi_bresp,
  //     output logic  axi_bvalid,
  //     input logic  axi_bready,
  //     input logic [C_AXI_ADDR_WIDTH-1 : 0] axi_araddr,
  //     input logic [2 : 0] axi_arprot,
  //     input logic  axi_arvalid,
  //     output logic  axi_arready,
  //     output logic [C_AXI_DATA_WIDTH-1 : 0] axi_rdata,
  //     output logic [1 : 0] axi_rresp,
  //     output logic  axi_rvalid,
  //     input logic  axi_rready
  // );

  //----------------------------------------------------------------------------------------------------

  logic clk_25MHz = 0, clk_100MHz = 0;

  always #5 clk_100MHz = ~clk_100MHz;  // 10ns period
  always #20 clk_25MHz = ~clk_25MHz;  // 40 ns full period ? 25 MHz

  logic clk;
  assign clk = clk_100MHz;

//   logic clk_25MHz, clk_100MHz;
  // logic clk_125MHz, clk, clk_100MHz;
  // logic locked;

  // clk_wiz_0 clk_wiz (
  //     .clk_out1(clk_25MHz),
  //     .clk_out2(clk_125MHz),
  //     .clk_out3(clk_100MHz),
  //     .reset(~axi_aresetn),
  //     .locked(locked),
  //     .clk_in1(axi_aclk)
  // );

  //----------------------------------------------------------------------------------------------------
  // configuration signals
  //----------------------------------------------------------------------------------------------------

  logic zero_last_line_after_read;
  assign zero_last_line_after_read = 1'b1;

  logic vga_reset;
  logic reset_ip;

  // for TB purposes set vga_reset and reset_ip  to values
  logic axi_aclk;
  assign axi_aclk = clk_100MHz;


  // for fpga IP reset

  // logic  axi_aresetn;
  // assign vga_reset = ~axi_aresetn;
  // assign reset_ip = ~axi_aresetn;

  //----------------------------------------------------------------------------------------------------

  logic hsync, vsync, vde;
  logic [9:0] drawX, drawY;

  //VGA Sync signal generator
  vga_controller vga (
      .pixel_clk(clk_25MHz),
      .reset(vga_reset),
      .hs(hsync),
      .vs(vsync),
      .active_nblank(vde),
      .drawX(drawX),
      .drawY(drawY)
  );
  //----------------------------------------------------------------------------------------------------

  logic [3:0] red, green, blue;
  //    logic [3:0] red_test, green_test, blue_test;
  //    assign red_test = 4'hF;
  //    assign green_test = 4'hF;
  //    assign blue_test = 4'hF;
  //Real Digital VGA to HDMI converter

  // hdmi_tx_0 vga_to_hdmi 
  // (
  //     //Clocking and Reset
  //     .pix_clk(clk_25MHz),
  //     .pix_clkx5(clk_125MHz),
  //     .pix_clk_locked(locked),
  //     .rst(~axi_aresetn),
  //     //Color and Sync Signals
  //     .red(red),
  //     .green(green),
  //     .blue(blue),
  //     .hsync(hsync),
  //     .vsync(vsync),
  //     .vde(vde),

  //     //aux Data (unused)
  //     .aux0_din(4'b0),
  //     .aux1_din(4'b0),
  //     .aux2_din(4'b0),
  //     .ade(1'b0),

  //     //Differential outputs
  //     .TMDS_CLK_P(hdmi_clk_p),          
  //     .TMDS_CLK_N(hdmi_clk_n),          
  //     .TMDS_DATA_P(hdmi_tx_p),         
  //     .TMDS_DATA_N(hdmi_tx_n)          
  // );   
  //----------------------------------------------------------------------------------------------------

  //axi user ports -- inputs
  // director outputs
  logic [31:0] frame_count;
  logic [31:0] frame_ticks;
  logic [31:0] clock_ticks;

  //    logic spw_eos_n;
  logic [31:0] reg_status;

  //axi user ports -- outputs    
  //director inputs
  logic reg_strobe;
  logic [31:0] reg_command;

  //----------------------------------------------------------------------------------------------------

  // Instantiation of Axi Bus Interface AXI
  // hdmi_text_controller_v1_0_AXI # ( 
  //     .C_S_AXI_DATA_WIDTH(C_AXI_DATA_WIDTH),
  //     .C_S_AXI_ADDR_WIDTH(C_AXI_ADDR_WIDTH)
  // ) hdmi_text_controller_v1_0_AXI_inst (
  //     .S_AXI_ACLK(axi_aclk),
  //     .S_AXI_ARESETN(axi_aresetn),
  //     .S_AXI_AWADDR(axi_awaddr),
  //     .S_AXI_AWPROT(axi_awprot),
  //     .S_AXI_AWVALID(axi_awvalid),
  //     .S_AXI_AWREADY(axi_awready),
  //     .S_AXI_WDATA(axi_wdata),
  //     .S_AXI_WSTRB(axi_wstrb),
  //     .S_AXI_WVALID(axi_wvalid),
  //     .S_AXI_WREADY(axi_wready),
  //     .S_AXI_BRESP(axi_bresp),
  //     .S_AXI_BVALID(axi_bvalid),
  //     .S_AXI_BREADY(axi_bready),
  //     .S_AXI_ARADDR(axi_araddr),
  //     .S_AXI_ARPROT(axi_arprot),
  //     .S_AXI_ARVALID(axi_arvalid),
  //     .S_AXI_ARREADY(axi_arready),
  //     .S_AXI_RDATA(axi_rdata),
  //     .S_AXI_RRESP(axi_rresp),
  //     .S_AXI_RVALID(axi_rvalid),
  //     .S_AXI_RREADY(axi_rready),

  //     //user ports
  //     //I
  //     .frame_count(frame_count),
  //     .frame_ticks(frame_ticks),
  //     .clock_ticks(clock_ticks),    
  //     .drawX(drawX),
  //     .drawY(drawY),
  // //    .spw_eos_n(spw_eos_n),
  //     .reg_status(reg_status),
  //     //O
  //     .reg_strobe(reg_strobe),
  //     .reg_command(reg_command)
  // );

  //----------------------------------------------------------------------------------------------------

  logic [7:0] sprite_nb;
  logic [16:0] base_addr;
  logic rd_en;
  logic dir_fb_sel_rd;
  logic eos_n;
  logic wren;

  logic fb_sel_rd;

// for fpga Prod
//   assign fb_sel_rd = dir_fb_sel_rd;

  director director_inst (
      //i
      .reset(reset_ip),
      .cpu_clk(axi_aclk),
      .reg_command(reg_command),
      .reg_strobe(reg_strobe),
      .vga_vsync(vsync),
      .sp_writer_eos_n(wren),
      //o
      .sprite_nb(sprite_nb),
      .base_addr(base_addr),
      .rd_en(rd_en),
      .reg_status(reg_status),
      .frame_counter(frame_count),
      .frame_ticks(frame_ticks),
      .clock_ticks(clock_ticks),
      .fb_sel(dir_fb_sel_rd)
  );
  //----------------------------------------------------------------------------------------------------


  logic eor_n;
  logic [3:0] data;
  logic [4:0] col_ctr;
  logic data_rdy;

  multi_sprite_reader multi_sprite_reader_inst (
      //i
      .reset(reset_ip),
      .sprite_nb(sprite_nb),
      .rd_en(rd_en),
      .cpu_clk(axi_aclk),
      //o
      .eos_n(eos_n),
      .eor_n(eor_n),
      .data(data),
      .col_ctr(col_ctr),
      .data_rdy(data_rdy)
  );
  //----------------------------------------------------------------------------------------------------

  logic [16:0] waddr;
  logic [ 3:0] wdata;

  sprite_writer sprite_writer_inst (
      //i
      .reset(reset_ip),
      .cpu_clk(axi_aclk),
      .eos_n(eos_n),
      .eor_n(eor_n),
      .data_rdy(data_rdy),
      .base_addr(base_addr),
      .col_ctr(col_ctr),
      .data_in(data),
      //o
      .waddr(waddr),
      .wdata(wdata),
      .wren(wren)
  );
  //----------------------------------------------------------------------------------------------------
  logic [ 3:0] fb_data;
  logic        fb_data_rdy;
  logic        fb_rden_b;
  logic [16:0] merger_wr_addr;
  logic [ 3:0] merger_wr_data;
  logic        merger_wren_a;
  logic        fb_eor_n;
  logic        fb_eos_n;
  logic [16:0] fb_addr;

  fb_manager fb_manager_inst (
      .reset(reset_ip),
      //port A inputs
      .clk_a(axi_aclk),
      .waddr_a(waddr),
      .wdata_a(wdata),
      .wren_a(wren),
      //port B inputs
      .clk_b(clk_100MHz),  //100
      .fb_addr_b(fb_addr),
      .rden_b(fb_rden_b),
      .merger_fb_sel(fb_sel_rd),
      .merger_wr_addr(merger_wr_addr),
      .merger_wr_data(merger_wr_data),
      .merger_wren_a(merger_wren_a),
      //o
    //   .fb_eor_n(fb_eor_n),
    //   .fb_eos_n(fb_eos_n),
      .fb_data_rdy(fb_data_rdy),
      .fb_data(fb_data)
  );

  //----------------------------------------------------------------------------------------------------
  logic [ 1:0] bg_data;
  logic [16:0] bg_addr;

  fb_bg_merger fb_bg_merger_inst (
      .reset(reset_ip),
      .cpu_clk(clk_100MHz),  //100
      //vga i    
      .drawX(drawX),
      .drawY(drawY),
      .vde(vde),
      .vsync(vsync),
      .hsync(hsync),
      //fb i/o    
      .fb_data(fb_data),
      .fb_data_rdy(fb_data_rdy),
      .fb_rden_b(fb_rden_b),
      .fb_addr(fb_addr),
      // Inputs from Merger Write Side to zero out last line
      .zero_last_line_after_read(zero_last_line_after_read),
      .fb_merger_wr_addr(merger_wr_addr),
      .fb_merger_wr_data(merger_wr_data),
      .fb_merger_wren_a(merger_wren_a),
      //bg i/o
      .bg_data(bg_data),
      .bg_addr(bg_addr),
      //rgb o
      .red(red),
      .green(green),
      .blue(blue)
  );

  bg_manager bg_manager_inst (
      .cpu_clk(clk_100MHz),  //100
      .addr(bg_addr),
      .data(bg_data)
  );


  //Instiante clocking wizard, VGA sync generator modules, and VGA-HDMI IP here. For a hint, refer to the provided
  //top-level from the previous lab. You should get the IP to generate a valid HDMI signal (e.g. blue screen or gradient)
  //prior to working on the text drawing.

  // User logic ends
  initial begin
    // Initialize Inputs

    // Wait 100 ns for global reset to finish
    #50;

    @(posedge clk);    
    vga_reset = 1;
    reset_ip = 1;
    reg_strobe = 0;

    fb_sel_rd = 0;

    // @(posedge clk);    
    // @(posedge clk);    
    // @(posedge clk);    
    #30;
    @(posedge clk);    
    reset_ip = 0;
    
    #40;

    // #10;
    @(posedge clk);    
    reg_command = {8'd10, 7'd0, 17'd330};
    reg_strobe = 1;
    // @(posedge clk);    

    // #10;
    @(posedge clk);    
    reg_strobe = 0;

    #100
    // @(posedge clk);    
    wait (~wren);

    #100;

    @(posedge clk);    
    fb_sel_rd = 1;

    #100 
    vga_reset = 0;

    // @(posedge clk); 
    // wait (vde == 1'b1);
    
    @(posedge clk); 
    wait (drawY == 2 && drawX == 645);

    // #1;
    //    DUT4.cumm_drawY_320 <= 640;
    @(posedge clk); 
    wait (drawY == 5);
    // wait (drawY == 30);

    $display("ROM read finished at time %t", $time);
    $finish;  // end simulation

    // Add stimulus here

  end

endmodule
