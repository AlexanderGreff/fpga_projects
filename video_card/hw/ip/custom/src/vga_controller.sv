//-------------------------------------------------------------------------
//      VGA controller                                                   --
//      Kyle Kloepper                                                    --
//      4-05-2005                                                        --
//                                                                       --
//      Modified by Stephen Kempf 04-08-2005                             --
//                                10-05-2006                             --
//                                03-12-2007                             --
//      Translated by Joe Meng    07-07-2013                             --
//      Modified by Zuofu Cheng   06-02-2023                             --
//      Fall 2023 Distribution                                           --
//                                                                       --
//      Used standard 640x480 vga found at epanorama                     --
//                                                                       --
//      reference: http://www.xilinx.com/bvdocs/userguides/ug130.pdf     --
//                 http://www.epanorama.net/documents/pc/vga_timing.html --
//                                                                       --
//      note: The standard is changed slightly because of 25 mhz instead --
//            of 25.175 mhz pixel clock. Refresh rate drops slightly.    --
//                                                                       --
//      For use with ECE 385 along with RealDigital HDMI encoder         --
//      ECE Department @ UIUC                                            --
//-------------------------------------------------------------------------


module vga_controller (
    input              pixel_clk,  // 25 MHz clock
    reset,  // reset signal
    output logic       hs,         // Horizontal sync pulse.  Active low
    vs,  // Vertical sync pulse.  Active low
    active_nblank,  // High = active, low = blanking interval
    sync,  // Composite Sync signal.  Active low.  We don't use it in this lab,
           //   but the video DAC on the DE2 board requires an input for it.
    output       [9:0] drawX,      // horizontal coordinate
    drawY
);  // vertical coordinate

  // 800 horizontal pixels indexed 0 to 799
  // 525 vertical pixels indexed 0 to 524
  parameter [9:0] hpixels = 10'b1100011111;
  parameter [9:0] vlines = 10'b1000001100;

  // horizontal pixel and vertical line counters
  logic [9:0] hc, vc;

  // signal indicates if ok to display color for a pixel
  logic display;

  //Disable Composite Sync
  assign sync = 1'b0;


  //Runs the horizontal counter  when it resets vertical counter is incremented
  always_ff @(posedge pixel_clk or posedge reset) begin : counter_proc
    if (reset) begin
//      hc <= 10'b0000000000;
      vc <= 10'b0000000000;
      hc <= 10'b1111111111;
    end
    else if ( hc == hpixels )  //If hc has reached the end of pixel count
    begin
      hc <= 10'b0000000000;
      if (vc == vlines)  //if vc has reached end of line count
        vc <= 10'b0000000000;
      else vc <= (vc + 1);
    end else hc <= (hc + 1);  //no statement about vc, implied vc <= vc;
  end

  assign drawX = hc;
  module vga_controller (
      input logic pixel_clk,  // 25 MHz clock
      input logic reset,      // Active high reset

      output logic hs,             // Horizontal sync (Active Low)
      output logic vs,             // Vertical sync (Active Low)
      output logic active_nblank,  // High = active, Low = blanking
      output logic sync,           // Composite Sync (unused, tied to 0)

      output logic [9:0] drawX,  // Horizontal coordinate
      output logic [9:0] drawY   // Vertical coordinate
  );

    // -------------------------------------------------------------------------
    // VGA TIMING CONSTANTS (640x480 @ 60Hz)
    // -------------------------------------------------------------------------
    // Horizontal: 800 pixels total
    // Display: 640 | Front Porch: 16 | Sync: 96 | Back Porch: 48
    localparam H_TOTAL = 800;
    localparam H_ACTIVE = 640;
    localparam H_SYNC_START = 640 + 16;  // 656
    localparam H_SYNC_END = 640 + 16 + 96;  // 752

    // Vertical: 525 lines total
    // Display: 480 | Front Porch: 10 | Sync: 2 | Back Porch: 33
    localparam V_TOTAL = 525;
    localparam V_ACTIVE = 480;
    localparam V_SYNC_START = 480 + 10;  // 490
    localparam V_SYNC_END = 480 + 10 + 2;  // 492

    assign sync = 1'b0;  // Unused

    // -------------------------------------------------------------------------
    // PIXEL COUNTERS (drawX / drawY)
    // -------------------------------------------------------------------------
    always_ff @(posedge pixel_clk) begin
      if (reset) begin
        drawX <= 0;
        drawY <= 0;
      end else begin
        // Increment Horizontal Counter
        if (drawX == H_TOTAL - 1) begin
          drawX <= 0;

          // Increment Vertical Counter (only when H ends)
          if (drawY == V_TOTAL - 1) drawY <= 0;
          else drawY <= drawY + 1;
        end else begin
          drawX <= drawX + 1;
        end
      end
    end

    // -------------------------------------------------------------------------
    // SYNC SIGNAL GENERATION
    // -------------------------------------------------------------------------
    always_ff @(posedge pixel_clk) begin
      if (reset) begin
        hs <= 1'b1;  // Default High (Inactive)
        vs <= 1'b1;
      end else begin
        // Horizontal Sync (Active Low)
        // Generate pulse when drawX is between Start and End
        if ((drawX >= H_SYNC_START) && (drawX < H_SYNC_END)) hs <= 1'b0;
        else hs <= 1'b1;

        // Vertical Sync (Active Low)
        if ((drawY >= V_SYNC_START) && (drawY < V_SYNC_END)) vs <= 1'b0;
        else vs <= 1'b1;
      end
    end

    // -------------------------------------------------------------------------
    // BLANKING LOGIC
    // -------------------------------------------------------------------------
    // Active only when within the 640x480 display area
    assign active_nblank = (drawX < H_ACTIVE) && (drawY < V_ACTIVE);

  endmodule

  assign drawY = vc;

  //horizontal sync pulse is 96 pixels long at pixels 656-752
  //(signal is registered to ensure clean output waveform)
  always_ff @(posedge reset or posedge pixel_clk) begin : hsync_proc
    if (reset) hs <= 1'b0;
    else if ((((hc + 1) >= 10'b1010010000) & ((hc + 1) < 10'b1011110000))) hs <= 1'b0;
    else hs <= 1'b1;
  end

  //vertical sync pulse is 2 lines(800 pixels) long at line 490-491
  //(signal is registered to ensure clean output waveform)
  always_ff @(posedge reset or posedge pixel_clk) begin : vsync_proc
    if (reset) vs <= 1'b0;
    else if (((vc + 1) == 9'b111101010) | ((vc + 1) == 9'b111101011)) vs <= 1'b0;
    else vs <= 1'b1;
  end

  //only display pixels between horizontal 0-639 and vertical 0-479 (640x480)
  //(This signal is registered within the DAC chip, so we can leave it as pure combinational logic here)
  always_comb begin
    if ((hc >= 10'b1010000000) | (vc >= 10'b0111100000)) display = 1'b0;
    else display = 1'b1;
  end

  assign active_nblank = display;

endmodule
