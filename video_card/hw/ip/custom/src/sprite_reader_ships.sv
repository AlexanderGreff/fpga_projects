`timescale 1ns / 1ps
//`default_nettype none  


module sprite_reader_ships (
    input logic reset,
    input logic [7:0] sprite_nb,
    input logic rd_en,
    input logic cpu_clk,

    output logic eos_n,  //end of sprite, ACTIVE LOW
    output logic eor_n,  //end of row, ACTIVE LOW
    output logic [3:0] data,
    output logic [4:0] col_ctr,
    output logic data_rdy
);
  logic rd_en_prev;
  logic [7:0] sprite_nb_q;
  logic is_rd;
  logic [3:0] rom_q1, rom_q2, rom_q3, rom_q4, rom_q5, rom_q6, rom_qtest;
  logic [1:0] rom_rd_latency;
  logic [9:0] rom_address;

  // total number of bytes per sprite = 576 : 0-575
  // sprite size: 24w x 24h pixels, 4bpp
  // max length row = 24 bytes // 5'd23
  // total bytes = 24 bytes/row * 24 rows = 576 bytes // 10'd575

  always_ff @(posedge cpu_clk) begin
    if (reset) begin
      rom_rd_latency <= '0;
      rom_address <= 10'b0;
      is_rd <= 1'b0;
      sprite_nb_q <= '0;
      col_ctr <= 5'b0;
      rd_en_prev <= '0;
      eos_n <= 1'b0;
      eor_n <= 1'b0;
      data_rdy <= '0;
      data <= 4'b0;
    end else begin
      rd_en_prev <= rd_en;
      if (rd_en_prev == 1'b0 & rd_en == 1'b1) //<--posedge
      begin
        rom_rd_latency <= '0;
        rom_address <= 10'b0;
        is_rd <= 1'b1;
        sprite_nb_q <= sprite_nb;
        col_ctr <= 5'b0;
      end
      if (is_rd == 1'b0) begin  //ending condition
        data_rdy <= 1'b0;
      end
      if (is_rd & (rom_address <= 10'd575)) begin
        if (rom_rd_latency == 2'd2) begin
          data_rdy <= 1'b1;
          rom_rd_latency <= '0;
          case (sprite_nb_q)
            8'd128: begin
              data <= rom_q1;
            end
            8'd129: begin
              data <= rom_q2;
            end
            8'd130: begin
              data <= rom_q3;
            end
            8'd131: begin
              data <= rom_q4;
            end
            8'd132: begin
              data <= rom_q5;
            end
            8'd133: begin
              data <= rom_q6;
            end
            8'd134: begin
              data <= rom_qtest;
            end
            default: begin
              data <= '0;
              $display("data default: sprite number %d", sprite_nb_q);
            end
          endcase

          if (col_ctr < 5'd23) begin

            if (rom_address < 10'd575) begin
              eos_n <= 1'b1;
              eor_n <= 1'b1;
              rom_address <= rom_address + 10'd1;
            end  //else begin  //if rom_address == 575
                 // if (is_rd & rom_address == 10'd575 & col_ctr == 5'd0) begin
            // end

            if (col_ctr == '0 & rom_address != 10'd575) begin
              eor_n <= 1'b1;
            end

            if (eor_n == 1'b1) begin  //when eor is high, increment col_ctr
              col_ctr <= col_ctr + 5'd1;
            end

          end else begin  //if col_ctr == 5'd23
            if (is_rd & rom_address == 10'd575) begin
              is_rd <= '0;
              eos_n <= 1'b0;
              // eor_n <= 1'b0;
            end
            col_ctr <= 5'b0;
            eor_n   <= 1'b0;
          end

        end else begin  //end of 2 block
          rom_rd_latency <= rom_rd_latency + 2'd1;
          data_rdy <= 1'b0;
        end
      end
    end
  end

  ships1_rom ships1_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q1)
  );


  ships2_rom ships2_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q2)
  );

  ships3_rom ships3_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q3)
  );

  ships4_rom ships4_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q4)
  );

  ships5_rom ships5_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q5)
  );

  ships6_rom ships6_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_q6)
  );

  test_rom test_rom (
      .clka (cpu_clk),
      .addra(rom_address),
      .douta(rom_qtest)
  );

endmodule
// `default_nettype wire
