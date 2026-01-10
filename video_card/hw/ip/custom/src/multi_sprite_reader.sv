`timescale 1ns / 1ps 
//`default_nettype none


module multi_sprite_reader (
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

  logic reset_missiles;
  logic [7:0] sprite_nb_missiles;
  logic rd_en_missiles;
  logic cpu_clk_missiles;
  logic eos_n_missiles;
  logic eor_n_missiles;
  logic [3:0] data_missiles;
  logic [4:0] col_ctr_missiles;
  logic data_rdy_missiles;

  logic reset_ships;
  logic [7:0] sprite_nb_ships;
  logic rd_en_ships;
  logic cpu_clk_ships;
  logic eos_n_ships;
  logic eor_n_ships;
  logic [3:0] data_ships;
  logic [4:0] col_ctr_ships;
  logic data_rdy_ships;

  logic select_sprite_type;  // 1=ships, 0=missiles

  always_comb begin

    select_sprite_type = sprite_nb[7];  // MSB decides sprite type

    //common logic
    reset_missiles = reset;
    reset_ships = reset;
    cpu_clk_missiles = cpu_clk;
    cpu_clk_ships = cpu_clk;
    sprite_nb_missiles = sprite_nb;
    sprite_nb_ships = sprite_nb;

    //inputs
    rd_en_missiles = select_sprite_type ? 1'b0 : rd_en;
    rd_en_ships = select_sprite_type ? rd_en : 1'b0;

    //outputs
    eos_n = select_sprite_type ? eos_n_ships : eos_n_missiles;
    eor_n = select_sprite_type ? eor_n_ships : eor_n_missiles;
    data = select_sprite_type ? data_ships : data_missiles;
    col_ctr = select_sprite_type ? col_ctr_ships : col_ctr_missiles;
    data_rdy = select_sprite_type ? data_rdy_ships : data_rdy_missiles;
  end


  sprite_reader_ships sprite_reader_ships (
      .reset(reset_ships),
      .sprite_nb(sprite_nb_ships),
      .rd_en(rd_en_ships),
      .cpu_clk(cpu_clk_ships),
      .eos_n(eos_n_ships),
      .eor_n(eor_n_ships),
      .data(data_ships),
      .col_ctr(col_ctr_ships),
      .data_rdy(data_rdy_ships)
  );

  sprite_reader_missiles sprite_reader_missiles (
      .reset(reset_missiles),
      .sprite_nb(sprite_nb_missiles),
      .rd_en(rd_en_missiles),
      .cpu_clk(cpu_clk_missiles),
      .eos_n(eos_n_missiles),
      .eor_n(eor_n_missiles),
      .data(data_missiles),
      .col_ctr(col_ctr_missiles),
      .data_rdy(data_rdy_missiles)
  );

endmodule
//`default_nettype wire
