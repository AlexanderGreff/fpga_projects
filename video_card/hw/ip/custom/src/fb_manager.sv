`timescale 1ns / 1ps
//`default_nettype none

module fb_manager (
    // System
    input logic reset,

    // Port A: Sprite Writer (Write Side)
    input logic        clk_a,
    input logic [16:0] waddr_a,
    input logic [ 3:0] wdata_a,
    input logic        wren_a,

    // Port B: Merger (Read Side)
    input logic clk_b,

    // following inputs are keept for backward info compatibility but not used anymore
    // input logic is_new_row,
    // input logic merger_zero_last_line,

    input logic [16:0] fb_addr_b,
    input logic rden_b,
    input logic merger_fb_sel,  // 0 = Read FB0, 1 = Read FB1
    input logic writer_fb_sel,  // 0 = Write FB0, 1 = Write FB1

    // Inputs from Merger Write Side to zero out last line
    input logic [16:0] merger_wr_addr,
    input logic [ 3:0] merger_wr_data,
    input logic        merger_wren_a,

    // Outputs
    // output logic fb_eor_n, //remove unused
    // output logic fb_eos_n, //remove unused
    output logic fb_data_rdy,
    output logic [3:0] fb_data
);

  // ==========================================
  // Internal Signals
  // ==========================================

  // BRAM Interface Wires
  logic [16:0] fb0_addr_a, fb0_addr_b;
  logic [3:0] fb0_din_a, fb0_dout_b;
  logic fb0_wren_a;

  logic [16:0] fb1_addr_a, fb1_addr_b;
  logic [3:0] fb1_din_a, fb1_dout_b;
  logic fb1_wren_a;

  // ==========================================
  // Control Logic
  // ==========================================

  // ------------------------------------------
  // Write Port Logic (Port A)
  // ------------------------------------------
  // FB1 Write Mux
  assign fb1_wren_a = writer_fb_sel ? wren_a : merger_wren_a;
  assign fb1_addr_a = writer_fb_sel ? waddr_a : merger_wr_addr;
  assign fb1_din_a = writer_fb_sel ? wdata_a : merger_wr_data;

  // FB0 Write Mux
  assign fb0_wren_a = ~writer_fb_sel ? wren_a : merger_wren_a;
  assign fb0_addr_a = ~writer_fb_sel ? waddr_a : merger_wr_addr;
  assign fb0_din_a = ~writer_fb_sel ? wdata_a : merger_wr_data;

  // ------------------------------------------
  // Read Port Logic (Port B)
  // ------------------------------------------
  // Direct connection - no gating. If merger wants to read, let it read.
  assign fb1_addr_b = fb_addr_b;
  assign fb0_addr_b = fb_addr_b;

  // ------------------------------------------
  // [FIX] Pipelined Read Data Path
  // ------------------------------------------

  // 1. Mux the output data based on which FB is active for reading
  assign fb_data = merger_fb_sel ? fb1_dout_b : fb0_dout_b;

  // 2. Generate Data Ready using a Shift Register (2 cycles latency)
  // This replaces the complex Request/Ack handshake
  logic [1:0] rden_pipe;

  always_ff @(posedge clk_b) begin
    if (reset) begin
      rden_pipe   <= 2'b00;
      fb_data_rdy <= 1'b0;
    end else begin
      // Shift the read enable signal into the pipeline
      rden_pipe[0] <= rden_b;
      rden_pipe[1] <= rden_pipe[0];

      // The BRAM takes 2 cycles to respond.
      // If we asked for data at T=0, rden_b was 1.
      // At T=2, rden_pipe[1] will be 1, signaling valid data.
      fb_data_rdy  <= rden_pipe[1];
    end
  end

  // Unused outputs
  assign fb_eor_n = 1'b1;
  assign fb_eos_n = 1'b1;

  // ==========================================
  // BRAM Instantiations
  // ==========================================
  blk_mem_gen_0 fb0 (
      .clka (clk_a),
      .ena  (1'b1),
      .wea  (fb0_wren_a),
      .addra(fb0_addr_a),
      .dina (fb0_din_a),
      .douta(),
      .clkb (clk_b),
      .enb  (1'b1),
      .web  (1'b0),
      .addrb(fb0_addr_b),
      .dinb (4'd0),
      .doutb(fb0_dout_b)
  );

  blk_mem_gen_0 fb1 (
      .clka (clk_a),
      .ena  (1'b1),
      .wea  (fb1_wren_a),
      .addra(fb1_addr_a),
      .dina (fb1_din_a),
      .douta(),
      .clkb (clk_b),
      .enb  (1'b1),
      .web  (1'b0),
      .addrb(fb1_addr_b),
      .dinb (4'd0),
      .doutb(fb1_dout_b)
  );

endmodule
`default_nettype wire
