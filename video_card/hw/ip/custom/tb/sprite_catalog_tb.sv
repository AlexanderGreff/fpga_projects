`timescale 1ns / 100ps



module sprite_catalog_tb ();
  logic          clk = 0;
  logic          rd_en;
  logic   [ 7:0] sprite_nb;
  logic          eos_n;  //end of sprite, ACTIVE LOW
  logic          eor_n;  //end of row, ACTIVE LOW
  logic   [ 3:0] data;
  logic   [16:0] rom_address;
  logic   [ 4:0] col_ctr;
  logic   [ 1:0] rom_rd_latency;
  logic          is_rd;
  logic          reset;
  logic          data_rdy;
  logic   [16:0] waddr;
  logic   [ 3:0] wdata;
  logic          wren;

  logic   [16:0] base_addr;
  logic   [16:0] rd_addr;
  logic          sel;
  logic          fb_data_rdy;
  logic   [16:0] merger_wr_addr;
  logic   [ 3:0] merger_wr_data;
  logic          merger_wren_a;


  integer        fd;
  logic   [ 3:0] fb_data;
  logic   [ 1:0] bg_data;
  logic          clk_25MHz = 0;
  logic          vsync;
  logic          hsync;
  logic          vde;
  logic   [ 9:0] drawX;
  logic   [ 9:0] drawY;
  logic          fb_rden_b;
  logic   [16:0] fb_addr;
  logic   [16:0] bg_addr;
  logic   [ 3:0] red;
  logic   [ 3:0] green;
  logic   [ 3:0] blue;
  logic          vga_reset;
  logic          zero_last_line_after_read;


  //  sprite_catalog DUT (
  //      .reset(reset),
  //      .sprite_nb(sprite_nb),
  //      .rd_en(rd_en),
  //      .cpu_clk(clk),
  //      .eos_n(eos_n),
  //      .eor_n(eor_n),
  //      .data(data),
  //      .data_rdy(data_rdy)
  //  );

  //  sprite_reader_ships DUT (
  //      .reset(reset),
  //      .sprite_nb(sprite_nb),
  //      .rd_en(rd_en),
  //      .cpu_clk(clk),
  //      .eos_n(eos_n),
  //      .eor_n(eor_n),
  //      .data(data),
  //      .data_rdy(data_rdy)
  //  );

  multi_sprite_reader DUT (
      .reset(reset),
      .sprite_nb(sprite_nb),
      .rd_en(rd_en),
      .cpu_clk(clk),
      .eos_n(eos_n),
      .eor_n(eor_n),
      .data(data),
      .data_rdy(data_rdy)
  );


  sprite_writer DUT2 (
      .reset(reset),
      .cpu_clk(clk),
      .eos_n(eos_n),
      .eor_n(eor_n),
      .data_rdy(data_rdy),
      .base_addr(base_addr),
      .col_ctr(col_ctr),
      .data_in(data),
      .waddr(waddr),
      .wdata(wdata),
      .wren(wren)
  );

  fb_manager DUT3 (
      .reset(reset),
      //Port A: Sprite Writer
      .clk_a(clk),
      .waddr_a(waddr),
      .wdata_a(wdata),
      .wren_a(wren),
      //Port B: Merger
      .clk_b(clk),
      .fb_addr_b(fb_addr),
      .rden_b(fb_rden_b),
      .merger_fb_sel(sel), //if 0, fb0 is being read, if 1 then fb1 is being read. LSB of frame_counter is driver.
      .fb_data_rdy(fb_data_rdy),
      .fb_data(fb_data),

      .merger_wr_addr(merger_wr_addr),
      .merger_wr_data(merger_wr_data),
      .merger_wren_a (merger_wren_a)
  );

  vga_controller vga_tb (
      .pixel_clk    (clk_25MHz),  // 25 MHz clock
      .reset        (vga_reset),  // reset signal
      .hs           (hsync),      // Horizontal sync pulse.  Active low
      .vs           (vsync),      // Vertical sync pulse.  Active low
      .active_nblank(vde),        // High = active, low = blanking interval
      //   .sync         (),  // Composite Sync signal.  Active low.  We don't use it in this lab,
      .drawX        (drawX),
      .drawY        (drawY)
  );


  fb_bg_merger DUT4 (
      .reset(reset),
      .cpu_clk(clk),
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

  bg_manager DUT5 (
      .cpu_clk(clk),
      .addr(bg_addr),
      .data(bg_data)
  );

  logic [16:0] fb0_addr_a;
  logic [ 3:0] fb0_din_a;
  logic        fb0_wren_a;


  //  assign rom_address = DUT.rom_address;
  assign rom_address = DUT.select_sprite_type ? DUT.sprite_reader_ships.rom_address : DUT.sprite_reader_missiles.rom_address;
  assign col_ctr = DUT.col_ctr;
  assign rom_rd_latency = DUT.select_sprite_type ? DUT.sprite_reader_ships.rom_rd_latency : DUT.sprite_reader_missiles.rom_rd_latency;
  assign is_rd = DUT.select_sprite_type ? DUT.sprite_reader_ships.is_rd : DUT.sprite_reader_missiles.is_rd;
  assign prev_row_base_addr = DUT2.prev_row_base_addr;
  assign row_count = DUT2.row_count;
  assign fb0_wren_a = DUT3.fb0_wren_a;
  assign fb0_addr_a = DUT3.fb0_addr_a;
  assign fb0_din_a = DUT3.fb0_din_a;
  // Generate 100 MHz clock
  always #5 clk = ~clk;  // 10ns period
  always #20 clk_25MHz = ~clk_25MHz;  // 40 ns full period ? 25 MHz


  logic [16:0] scroller_frame_start_addr;
  logic [16:0] scroller_frame_speed;
  logic scroller_frame_direction;

  logic [16:0] scroller_frame_next_start_addr;
  logic scroller_frame_next_start_direction;

  assign {scroller_frame_next_start_direction, scroller_frame_next_start_addr} = DUT4.compute_scroller(
      scroller_frame_start_addr, scroller_frame_speed, scroller_frame_direction
  );

  initial begin

// ----------------- scroller test start  -------------------

    @(posedge clk);
    scroller_frame_start_addr <= 17'd1600;
    scroller_frame_speed <= 17'd3200;
    scroller_frame_direction <= 1;

    @(posedge clk);
    assert (scroller_frame_next_start_addr === 17'd4800)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_addr incorrectly computed as %0d, expected %0d",
          $time,
          scroller_frame_next_start_addr,
          17'd4800
      );

    // Assert the direction independently
    assert (scroller_frame_next_start_direction === 1'b1)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_direction incorrectly computed as %b, expected %b",
          $time,
          scroller_frame_next_start_direction,
          1'b1
      );

    @(posedge clk);
    scroller_frame_start_addr <= 17'd76480;
    scroller_frame_speed <= 17'd3200;
    scroller_frame_direction <= 1;

    @(posedge clk);
    assert (scroller_frame_next_start_addr === 17'd73280)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_addr incorrectly computed as %0d, expected %0d",
          $time,
          scroller_frame_next_start_addr,
          17'd73280
      );

    // Assert the direction independently
    assert (scroller_frame_next_start_direction === 1'b0)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_direction incorrectly computed as %b, expected %b",
          $time,
          scroller_frame_next_start_direction,
          1'b1
      );

    @(posedge clk);
    scroller_frame_start_addr <= 17'd320;
    scroller_frame_speed <= 17'd3200;
    scroller_frame_direction <= 0;

    @(posedge clk);
    assert (scroller_frame_next_start_addr === 17'd3200)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_addr incorrectly computed as %0d, expected %0d",
          $time,
          scroller_frame_next_start_addr,
          17'd3200
      );

    // Assert the direction independently
    assert (scroller_frame_next_start_direction === 1'b1)
    else
      $error(
          "Time=%0t: ERROR: scroller_frame_next_start_direction incorrectly computed as %b, expected %b",
          $time,
          scroller_frame_next_start_direction,
          1'b1
      );

// ----------------- scroller test done, now normal sprite_writer test -------------------

    // Initialize everything
    vga_reset = 1;
    zero_last_line_after_read = 1'b1;
    reset = 1;
    rd_en = 0;
    sprite_nb = 0;
    sel = 1;
    // Wait a little before enabling
    #90;
    sprite_nb = 134;
    #10 rd_en = 1;  // rising edge ? should start reading
    #100;
    rd_en = 0;

    reset = 0;
    rd_en = 0;
    sprite_nb = 0;
    // Wait a little before enabling

    //sprite 1
    #90;
    // sprite_nb = 133;
    sprite_nb = 10;
    base_addr = 330;
    #10 rd_en = 1;  // rising edge ? should start reading
    #100;
    rd_en = 0;

    // Wait for the ROM read to finish
    //    wait (rom_address == 575);
//    wait (rom_address == 49);
    //    #100 sprite_nb = 133;
    #100
    wait (~wren);

  //sprite 2
    #90;
    // sprite_nb = 133;
    sprite_nb = 10;
    base_addr = 430;
    #10 rd_en = 1;  // rising edge ? should start reading
    #100;
    rd_en = 0;

    // Wait for the ROM read to finish
    //    wait (rom_address == 575);
//    wait (rom_address == 49);
    //    #100 sprite_nb = 133;
    #100
    wait (~wren);

    #100 sel = 0;

    //    fd = $fopen("fb0_dump.hex", "w");

    //    for (int addr = 0; addr < 76800; addr++) begin
    //      rd_addr = addr;

    //      // WAIT FOR VALID DATA (2-clock delay)
    //      @(posedge clk);
    //      @(posedge clk);
    //      #1;
    //      $fwrite(fd, "%05d %02d\n", rd_addr, fb_data);
    //    end

    //    $fclose(fd);
    //    $display("Dumped BRAM contents to fb0_dump.hex");
    //    #100;



    #100 vga_reset = 0;
    //    base_addr = 16020;
    //    #10 rd_en = 1;  // rising edge ? should start reading
    //    #100;
    //    rd_en = 0;
    //    wait (rom_address == 575);


    wait (vde == 1'b1);
    // this hack forces re-read of row 2 to check if zeroeing worked, useful when zero_last_line_after_read = 1'b1
    wait (drawY == 2 && drawX == 645);
    #1;
    //    DUT4.cumm_drawY_320 <= 640;

    wait (drawY == 30);

    // $display("ROM read finished at time %t", $time);
    // $finish;  // end simulation

    // #100;

    // $display("ROM read finished at time %t", $time);
    $finish;  // end simulation
  end
endmodule


//    forever begin
//        #10;
//        if (col_ctr == 2)
//        begin
//            data_prev <= data;
//            assert(data == (data_prev + 1) % 16)
//                $display("OK");
//            else
//            $error("ASSERTION FAILED: condition was false!");
//        end
//        $display("data", );
//    end
