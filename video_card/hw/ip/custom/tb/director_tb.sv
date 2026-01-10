`timescale 1ns / 1ps
`default_nettype none

module director_tb;

    // Inputs to the DUT
    logic reset;
    logic cpu_clk;
    logic [31:0] reg_command;
    logic reg_strobe;
    logic vga_vsync; // Declare vga_vsync as logic to drive it
    logic sp_writer_eos_n;

    // Outputs from the DUT
    logic [7:0] sprite_nb;
    logic [16:0] base_addr;
    logic rd_en;
    logic [31:0] reg_status;
    logic [31:0] frame_counter;
    logic [31:0] frame_ticks;
    logic [31:0] clock_ticks;
    logic fb_sel;

    // Instantiate the Unit Under Test (DUT)
    director DUT (
        .reset(reset),
        .cpu_clk(cpu_clk),
        .reg_command(reg_command),
        .reg_strobe(reg_strobe),
        .vga_vsync(vga_vsync),
        .sp_writer_eos_n(sp_writer_eos_n),
        .sprite_nb(sprite_nb),
        .base_addr(base_addr),
        .rd_en(rd_en),
        .reg_status(reg_status),
        .frame_counter(frame_counter),
        .frame_ticks(frame_ticks),
        .clock_ticks(clock_ticks),
        .fb_sel(fb_sel)
    );

    // Clock generation
    localparam CLK_PERIOD = 10; // 10 ns period, 100 MHz
    initial begin
        cpu_clk = 0;
        forever #(CLK_PERIOD / 2) cpu_clk = ~cpu_clk;
    end

    // VGA vsync signal generation
    initial begin
        vga_vsync = 1;
        forever begin
            #1000; // vga_vsync is high for 1000ns
            vga_vsync = 0;
            #20;  // vga_vsync is low for 20ns
            vga_vsync = 1;
        end
    end

    // Test stimulus and checks
    initial begin
        $display("------------------------------------------------------------------");
        $display("Starting director testbench simulation...");
        
        @(posedge cpu_clk);
        @(posedge cpu_clk);
        #5;
        // --- 1. Initial reset ---
        reset = 1;
        reg_strobe = 0;
        sp_writer_eos_n = 1; // Active-low, so 1 means NOT end of sprite
        reg_command = 32'h0;

        @(posedge cpu_clk);
        @(posedge cpu_clk);
        #2;
        reset = 0;
        $display("Time=%0t: After reset", $time);
        
        @(posedge cpu_clk);
        // Check reset state
        assert (sprite_nb === 8'h00) else $error("Reset check failed: sprite_nb is not 0");
        assert (base_addr === 17'h00000) else $error("Reset check failed: base_addr is not 0");
        assert (rd_en === 1'b0) else $error("Reset check failed: rd_en is not 0");
        assert (reg_status === 32'h00000000) else $error("Reset check failed: reg_status is not 0");
        assert (frame_counter === 32'h00000000) else $error("Reset check failed: frame_counter is not 0");

        // --- 2. Simulate a CPU command write and delayed EOS ---
        @(posedge cpu_clk);
        reg_command = {8'd134, 7'h0, 17'd330}; // Sprite 0xA5, base address 0x12345
        reg_strobe = 1;
        $display("Time=%0t: CPU writes command %h", $time, reg_command);
        
        // Wait a clock cycle for the DUT to register the command
        @(posedge cpu_clk);

        // Check immediate command effects after one clock cycle
        assert (sprite_nb === 8'd134) else $error("Command check failed: sprite_nb incorrect");
        assert (base_addr === 17'd330) else $error("Command check failed: base_addr incorrect");
        assert (rd_en === 1'b1) else $error("Command check failed: rd_en not set");
        assert (reg_status === 32'hFFFFFFFF) else $error("Command check failed: reg_status not busy");

        @(posedge cpu_clk);
        reg_strobe = 0;
        $display("Time=%0t: reg_strobe deasserted", $time);
        // Check rd_en after strobe falls
        assert (rd_en === 1'b0) else $error("Strobe deassert check failed: rd_en not cleared");
        
        // --- Delayed sp_writer_eos_n simulation ---
        #100; // Wait at least 100ns after rd_en was brought to 1
        $display("Time=%0t: Waiting 100ns before asserting sp_writer_eos_n", $time);

        @(posedge cpu_clk);
        sp_writer_eos_n = 0; // Assert active-low end-of-sprite signal
        $display("Time=%0t: sp_writer_eos_n asserted (active-low)", $time);

        // --- Check reg_status after EOS falling edge ---
        @(posedge cpu_clk);
        assert (reg_status === 32'h00000000) else $error("EOS check failed: reg_status not cleared");
        $display("Time=%0t: reg_status correctly changed to not busy", $time);

        #300; // Keep sp_writer_eos_n low for 300ns
        $display("Time=%0t: Waiting 300ns before deasserting sp_writer_eos_n", $time);
        
        @(posedge cpu_clk);
        sp_writer_eos_n = 1; // Deassert end-of-sprite signal
        $display("Time=%0t: sp_writer_eos_n deasserted", $time);
        
        // --- 3. Test frame_counter and frame_ticks with custom vsync ---
        @(posedge cpu_clk);

        wait (vga_vsync == 1'b0);
        $display("Time=%0t: Waiting for first vsync cycle", $time);
        wait (frame_counter > 0);
        assert(frame_counter === 1) else $error("Frame counter did not increment correctly on first vsync");

        @(posedge cpu_clk);
        $display("Time=%0t: Checking fb_sel after first vsync", $time);
        assert (fb_sel === (frame_counter % 2)) else $error("Vsync check failed: fb_sel does not match frame_counter");

        // --- New test block using posedge vsync ---
        $display("Time=%0t: Starting new test block for frame_ticks with posedge vsync", $time);
        repeat(300) begin
            @(posedge vga_vsync);
            $display("Time=%0t: Detected posedge vga_vsync. Checking frame_ticks value.", $time);
            // After the posedge vsync, the frame_ticks should be approximately 100, because
            // vsync was low for 20ns (2 clock cycles), and now it's high. We are waiting
            // for the negedge for ticks to reset.
            assert (frame_ticks > 0 && frame_ticks < 300) else $error("Posedge vsync check failed: frame_ticks is not incrementing correctly");
            
            @(negedge vga_vsync);
            @(posedge cpu_clk);

            #1;
            $display("Time=%0t: Detected negedge vga_vsync. frame_counter=%0d frame_ticks=%0d", $time, frame_counter, frame_ticks);
            
            // Check that frame_ticks is reset to 0 after the negedge vsync
            // @(posedge cpu_clk);
            assert (frame_ticks === 32'h00000000) else $error("Negedge vsync check failed: frame_ticks not reset");
        end
        
        // End simulation
        @(posedge cpu_clk);
        $display("------------------------------------------------------------------");
        $display("Testbench finished at time %0t. All checks passed.", $time);
        $finish;
    end
endmodule
`default_nettype logic
