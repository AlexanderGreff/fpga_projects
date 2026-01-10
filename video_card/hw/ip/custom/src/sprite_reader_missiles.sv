`timescale 1ns / 1ps
//`default_nettype none


module sprite_reader_missiles (
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
  logic [3:0] rom_q1;  //, rom_q2 rom_q3, rom_q4, rom_q5, rom_q6;
  logic [3:0] rom_qtest;
  logic [1:0] rom_rd_latency;
  logic [9:0] rom_address;

  // sprite size: 5w x 10h pixels, 4bpp
  // total number of bytes per sprite = 50 : 0-49
  // max length row = 5 bytes // 5'd4
  // total bytes = 5 bytes/row * 10 rows = 50 bytes // 10'd49
  // rom_address 0-49, no need 6 bits for row count, up to 64 [5:0]

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
      if (is_rd & (rom_address <= 10'd49)) begin
        if (rom_rd_latency == 2'd2) begin
          data_rdy <= 1'b1;
          rom_rd_latency <= '0;
          case (sprite_nb_q)
            8'd10: begin
              data <= rom_qtest;
            end
            8'd11: begin
              data <= rom_q1;
            end

            // 8'd12: begin
            //   data <= rom_q2;
            // end
            // 8'd13: begin
            //   data <= rom_q3;
            // end
            // 8'd14: begin
            //   data <= rom_q4;
            // end
            // 8'd15: begin
            //   data <= rom_q5;
            // end
            // 8'd16: begin
            //   data <= rom_q6;
            // end
            default: begin
              data <= '0;
              $display("data default: sprite number %d", sprite_nb_q);
            end
          endcase

          if (col_ctr < 5'd4) begin

            if (rom_address < 10'd49) begin
              eos_n <= 1'b1;
              eor_n <= 1'b1;
              rom_address <= rom_address + 17'd1;
            end  //else begin  //if rom_address == 575
                 // if (is_rd & rom_address == 10'd49 & col_ctr == 5'd0) begin
            // end

            if (col_ctr == 5'd0 & rom_address != 10'd49) begin
              eor_n <= 1'b1;
            end

            if (eor_n == 1'b1) begin  //when eor is high, increment col_ctr
              col_ctr <= col_ctr + 10'd1;
            end

          end else begin  //if col_ctr == 5'd4
            if (is_rd & rom_address == 10'd49) begin
              is_rd <= 1'b0;
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

  test_missiles_rom test_missiles (
      .clka (cpu_clk),
      .addra(rom_address[5:0]),
      .douta(rom_qtest)
  );

  missiles1_rom missiles1_rom (
      .clka (cpu_clk),
      .addra(rom_address[5:0]),
      .douta(rom_q1)
  );


  // missiles2_rom missiles2_rom (
  //     .clka (cpu_clk),
  //     .addra(rom_address[5:0]),
  //     .douta(rom_q2)
  // );

  // missiles3_rom missiles3_rom (
  //     .clka (cpu_clk),
  //     .addra(rom_address[5:0]),
  //     .douta(rom_q3)
  // );

  // missiles4_rom missiles4_rom (
  //     .clka (cpu_clk),
  //     .addra(rom_address[5:0]),
  //     .douta(rom_q4)
  // );

  // missiles5_rom missiles5_rom (
  //     .clka (cpu_clk),
  //     .addra(rom_address[5:0]),
  //     .douta(rom_q5)
  // );

  // missiles6_rom missiles6_rom (
  //     .clka (cpu_clk),
  //     .addra(rom_address[5:0]),
  //     .douta(rom_q6)
  // );



endmodule
`default_nettype wire
