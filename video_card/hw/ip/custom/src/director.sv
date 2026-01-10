`timescale 1ns / 1ps
//`default_nettype none


module director (
    input logic reset,
    input logic cpu_clk,

    input logic [31:0] reg_command,
    input logic reg_strobe,

    input logic vga_vsync,
    input logic sp_writer_eos_n, //end of sprite, ACTIVE LOW

    // for sending sprite to fb
    output logic [7:0] sprite_nb,
    output logic [16:0] base_addr,
    output logic rd_en,

    output logic [31:0] reg_status,

    // counters
    output logic [31:0] frame_counter,
    output logic [31:0] frame_ticks,
    output logic [31:0] clock_ticks,

    // frame buffer
    output logic merger_fb_sel,
    output logic writer_fb_sel
);
  logic reg_strobe_prev;
  logic vga_vsync_prev;
  logic sp_writer_eos_n_prev;
  logic is_busy;

  assign merger_fb_sel = ~frame_counter[0];
  assign writer_fb_sel = frame_counter[0];

  assign reg_status = is_busy ? 32'hFFFFFFFF : 32'h00000000;

  always_ff @(posedge cpu_clk) begin

    if (reset) begin
      sprite_nb <= 8'd0;
      base_addr <= 17'd0;
      rd_en <= 1'b0;
      // reg_status <= 32'd0;

      frame_counter <= 32'd0;
      frame_ticks <= 32'd0;
      clock_ticks <= 32'd0;

      reg_strobe_prev <= 1'b0;
      vga_vsync_prev <= 1'b0;
      sp_writer_eos_n_prev <= 1'b1;
      is_busy <= 1'b0;
    end else begin

      // we just go work to do
      reg_strobe_prev <= reg_strobe;
      if (reg_strobe_prev == 0 & reg_strobe == 1) begin  //<--posedge
        if (is_busy == 1'b0) begin //ignore if we are already busy
          sprite_nb <= reg_command[31:24];
          base_addr <= reg_command[16:0];
          // rd_en <= reg_strobe;
          rd_en <= 1'b1;
          is_busy <= 1'b1;
        end
      end else if (reg_strobe_prev == 1'b1 & reg_strobe == 1'b0) begin  //<--negedge
        // rd_en <= reg_strobe;
        rd_en <= 1'b0;
      end


      sp_writer_eos_n_prev <= sp_writer_eos_n;
      if (sp_writer_eos_n_prev == 1'b1 & sp_writer_eos_n == 1'b0) begin  //<- negedge
        if (is_busy) begin
          is_busy <= 1'b0;
          // reg_status <= 32'h00000000;  // not busy
        end
      end


      vga_vsync_prev <= vga_vsync;
      if (vga_vsync_prev == 1'b1 & vga_vsync == 1'b0) begin  //<- negedge
        frame_counter <= frame_counter + 32'd1;
        frame_ticks   <= 32'd0;
      end else begin
        frame_ticks <= frame_ticks + 32'd1;
      end

      clock_ticks <= clock_ticks + 32'd1;

    end
  end


endmodule
// `default_nettype wire
