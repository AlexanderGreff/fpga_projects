`timescale 1ns / 1ps
//`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 11/25/2025 03:22:03 PM
// Design Name:
// Module Name: fb_bg_merger
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module fb_bg_merger (
    input logic reset,
    input logic cpu_clk,
    //vga i
    input logic [9:0] drawX,
    input logic [9:0] drawY,
    input logic vde,
    input logic vsync,
    input logic hsync,
    //fb i/o
    input logic [3:0] fb_data,
    input logic fb_data_rdy,
    output logic fb_rden_b,
    output logic [16:0] fb_addr,

    // Inputs from Merger Write Side to zero out last line
    input  logic        zero_last_line_after_read_hd,
    output logic [16:0] fb_merger_wr_addr,
    output logic [ 3:0] fb_merger_wr_data,
    output logic        fb_merger_wren_a,

    //bg i/o
    input  logic [ 1:0] bg_data,
    output logic [16:0] bg_addr,
    //rgb o
    output logic [ 3:0] red,
    output logic [ 3:0] green,
    output logic [ 3:0] blue,
    //switch i
    input logic reg_strobe_sw,
    input logic [31:0] reg_switch
  );

  logic reg_strobe_sw_prev;
  logic [31:0] reg_sw_data;


  function automatic logic [17:0] compute_scroller(
      input logic [16:0] current_addr, input logic [16:0] offset_addr,  // speed of scrolling
      input logic current_direction // 1 = add, 0 = subtract
    );
    // Declare a local variable to store the intermediate CRC result.
    logic [16:0] new_addr;
    logic new_direction;
    logic [16:0] new_addr_plan;
    logic [16:0] over;

    if (current_direction == 1'b1) begin
      new_addr_plan = current_addr + offset_addr;
      // 320 x240 = 76800 pxels, last line starts at 76480
      if (new_addr_plan > 17'd76480) begin
        over = new_addr_plan - 17'd76480;
        new_addr = current_addr - over;
        new_direction = 1'b0;
      end else begin
        new_addr = new_addr_plan;
        new_direction = 1'b1;
      end
    end else begin
      if (current_addr < offset_addr) begin
        over = offset_addr - current_addr;
        new_addr = current_addr + over;
        new_direction = 1'b1;
      end else begin
        new_addr = current_addr - offset_addr;
        new_direction = 1'b0;
      end
    end

    return {new_direction, new_addr};
  endfunction

  function automatic logic compute_current_direction(
      input logic frame_direction,  // 1 = add, 0 = subtract
      input logic desired_direction // 1 = add, 0 = subtract
    );
    return (desired_direction == 1'b0) ? ~frame_direction : frame_direction;
  endfunction


  logic [16:0] drawX_320;
  //   input logic [9:0] drawY_320;  //in 320 * 240 display
  logic [16:0] cumm_drawY_320;  //adds +320 in 320 * 240 display
  logic [16:0] cumm_drawY_320_zero_start;  //to remember where to start zeroing
  logic [16:0] zeroing_counter;

  logic [ 3:0] fg_idx;
  logic [3:0] fg_red, fg_blue, fg_green;
  logic [3:0] bg_red, bg_blue, bg_green;
  logic [1:0] bg_idx;
  logic line_visible;
  logic drawX_lsb_prev;
  logic is_fg;

  assign fg_idx = fb_data;
  assign bg_idx = bg_data;
  assign line_visible = vsync & vde;

  logic should_use_reg_sw;
  assign should_use_reg_sw = reg_sw_data[0];


  logic prefetch;
  assign prefetch  = (drawX >= 10'd798);

  // Read whenever line is visible OR we are in the pre-fetch window
  // This ensures data is ready exactly when drawX hits 0.
  assign fb_rden_b = line_visible || prefetch;


  logic should_scroll_hd;
  logic [16:0] scroller_frame_speed;
  logic [16:0] scroller_frame_speed_hd;
  // assign should_scroll = 1'b0;  // disable scroll
  assign should_scroll_hd = 1'b1;  // always scroll
  logic [16:0] scroller_current_addr;
  


  assign fb_addr = drawX_320 + cumm_drawY_320;
  assign bg_addr = ~should_scroll ? drawX_320 + cumm_drawY_320 : drawX_320 + scroller_current_addr;
  // assign bg_addr   = drawX_320 + cumm_drawY_320;

  // scroller logic
  logic [16:0] scroller_frame_config_speed;
  assign scroller_frame_config_speed = 17'd640;  // 2 rows per frame


  // could be passed in as input later
logic [16:0] speed_selected_value;
always_comb begin
        // Assign a default value to prevent synthesis of unintended latches
        unique case (reg_sw_data[6:4])
            3'd0: speed_selected_value = 17'd0;
            3'd1: speed_selected_value = 17'd320;
            3'd2: speed_selected_value = 17'd640;
            3'd3: speed_selected_value = 17'd1280;
            3'd4: speed_selected_value = 17'd2560;
            3'd5: speed_selected_value = 17'd5120;
            3'd6: speed_selected_value = 17'd10240;
            3'd7: speed_selected_value = 17'd20480;
        endcase
    end

  logic scroller_desired_direction;  // 1 = forward, 0 = backward
  logic scroller_desired_direction_hd;  // 1 = forward, 0 = backward
  assign zero_last_line_after_read = should_use_reg_sw ?  reg_sw_data[1] : zero_last_line_after_read_hd;
  assign scroller_desired_direction = should_use_reg_sw ?  reg_sw_data[2] : scroller_desired_direction_hd;
  assign should_scroll = should_use_reg_sw ?  reg_sw_data[3] : should_scroll_hd;
  assign scroller_frame_speed = should_use_reg_sw ?  speed_selected_value : scroller_frame_speed_hd;

  logic [16:0] scroller_frame_start_addr;
  logic scroller_frame_direction;
  logic [16:0] scroller_frame_next_start_addr;
  logic scroller_frame_next_start_direction;
  assign {scroller_frame_next_start_direction, scroller_frame_next_start_addr} = compute_scroller(
      scroller_frame_start_addr, scroller_frame_speed, scroller_frame_direction
  );

  logic scroller_current_direction;
  logic [16:0] scroller_next_current_addr;
  logic scroller_next_current_direction;
  assign {scroller_next_current_direction, scroller_next_current_addr} = compute_scroller(
      scroller_current_addr, 17'd320, scroller_current_direction
  );

  always_ff @(posedge cpu_clk) begin
    if (reset) begin
      drawX_320 <= '0;
      cumm_drawY_320 <= '0;
      cumm_drawY_320_zero_start <= '0;
      zeroing_counter <= '0;
      fb_merger_wr_addr <= '0;
      fb_merger_wr_data <= '0;
      fb_merger_wren_a <= 0;
      is_fg <= 1'b0;
      red <= '0;
      green <= '0;
      blue <= '0;
      drawX_lsb_prev <= 1'b0;
      scroller_desired_direction_hd <= 1'b0;  //backward

      // scroller_frame_direction <= 1'b1;
      // scroller_frame_start_addr <=  17'd76480; // for production
      scroller_frame_direction <= 1'b0;  //backward
      scroller_frame_start_addr <= 17'd0;
      scroller_frame_speed_hd <= scroller_frame_config_speed;
      scroller_current_addr <= '0;
      scroller_current_direction <= 1'b1;
      reg_strobe_sw_prev <= '0;
      reg_sw_data <= '0;
    end else begin

        reg_strobe_sw_prev <= reg_strobe_sw;
      if (reg_strobe_sw_prev == 0 & reg_strobe_sw == 1) begin  //<--posedge
          reg_sw_data <= reg_switch;
        end

      // -----------------------------------------------------------
      // VERTICAL ACCUMULATOR RESET
      // -----------------------------------------------------------
      // CRITICAL FIX: Only reset Y when VSYNC is active (Frame Reset).
      // Do NOT reset just because line_visible is low (that happens every line).
      if (vsync == 1'b0) begin
        cumm_drawY_320 <= 0;
      end

      if (fb_merger_wren_a == 1'b1) begin
        fb_merger_wr_addr <= cumm_drawY_320_zero_start + zeroing_counter;
        fb_merger_wr_data <= 4'b0000;
        zeroing_counter   <= zeroing_counter + 17'd1;
        if (zeroing_counter == 17'd319) begin
          fb_merger_wren_a <= 1'b0;
        end
      end

      if (line_visible) begin
        // ---------------------------------------------------------
        // ACTIVE DISPLAY LOGIC
        // ---------------------------------------------------------

        // 1. X COUNTER
        drawX_lsb_prev <= drawX[0];

        // Increment on rising edge of LSB (Every 2 VGA pixels)
        if (drawX[0] == 1'b1 && drawX_lsb_prev == 1'b0) begin
          drawX_320 <= drawX_320 + 17'd1;

          if (drawX == 10'd639) begin  //end of line
            drawX_320 <= '0;

            if (drawY[0] == 1'b1) begin
              // duplicate lines from 320x240 to 640x480

              // Increment Y accumulator at end of visible line
              cumm_drawY_320 <= cumm_drawY_320 + 17'd320;
              // Update scroller current address for next line
              if (should_scroll) begin
                scroller_current_addr <= scroller_next_current_addr;
                scroller_current_direction <= scroller_next_current_direction;
              end

              if (drawY == 10'd479) begin
                if (should_scroll) begin
                  scroller_frame_start_addr <= scroller_frame_next_start_addr;
                  scroller_frame_direction <= scroller_frame_next_start_direction;
                  scroller_current_addr <= scroller_frame_next_start_addr;
                  scroller_current_direction <= compute_current_direction(scroller_frame_next_start_direction, scroller_desired_direction);
                  // scroller_current_direction <= scroller_frame_next_start_direction;
                end
              end
              // Check if we need to zero out last line
              if (zero_last_line_after_read) begin
                cumm_drawY_320_zero_start <= cumm_drawY_320;
                fb_merger_wr_addr <= cumm_drawY_320;
                fb_merger_wren_a <= 1'b1;  // start writing zeros
                zeroing_counter <= '0;
              end

            end

          end
        end

        // 2. COLOR OUTPUT
        // With prefetch, data is ready at Pixel 0.
        if (fb_data_rdy) begin
          if (fb_data == 4'b0000) begin  // fg transparent color
            is_fg <= 1'b0;
            red   <= bg_red;
            green <= bg_green;
            blue  <= bg_blue;
          end else begin
            is_fg <= 1'b1;
            red   <= fg_red;
            green <= fg_green;
            blue  <= fg_blue;
          end
        end

      end else begin
        // ---------------------------------------------------------
        // BLANKING INTERVAL
        // ---------------------------------------------------------

        // Reset X counter for the next line
        drawX_320      <= '0;

        // Reset edge detector
        drawX_lsb_prev <= '0;

        // Output Black during blanking (Required for VGA)
        red            <= '0;
        green          <= '0;
        blue           <= '0;
      end
    end
  end

  bg_palette bg_palette (
      //i
      .index(bg_idx),
      //o
      .red  (bg_red),
      .green(bg_green),
      .blue (bg_blue)
  );

  fg_palette fg_palette (
      //i
      .index(fg_idx),
      //o
      .red  (fg_red),
      .green(fg_green),
      .blue (fg_blue)
  );

endmodule
//`default_nettype wire

