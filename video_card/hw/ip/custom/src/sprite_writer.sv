`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2025 04:49:35 PM
// Design Name: 
// Module Name: sprite_writer
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


module sprite_writer (
    //i
    input logic reset,
    input logic cpu_clk,
    input logic eos_n,  //end of sprite, ACTIVE LOW
    input logic eor_n,  //end of row, ACTIVE LOW
    input logic data_rdy,
    input logic [16:0] base_addr,
    input logic [4:0] col_ctr,
    input logic [3:0] data_in,
    //o
    output logic [16:0] waddr,
    output logic [3:0] wdata,
    output logic wren
);
  logic [16:0] prev_row_base_addr;
  logic [4:0] row_count;
  logic eor_n_prev;

  always_ff @(posedge cpu_clk) begin
    if (reset) begin
      prev_row_base_addr <= '0;
      waddr <= '0;
      row_count <= '0;
    end else begin

      eor_n_prev <= eor_n;
      if (eor_n_prev == '0 & eor_n == 1'b1) //<--posedge
      begin
        if (row_count == '0) begin
          prev_row_base_addr <= base_addr;
          waddr <= base_addr;
          wren <= 1'b1;
        end else begin
          prev_row_base_addr <= prev_row_base_addr + 17'd320;
          waddr <= prev_row_base_addr + 17'd320;
        end
      end 
      else if (eor_n_prev == '1 & eor_n == 1'b0) //<--negedge
      begin
        if (eos_n) begin
          row_count <= row_count + 5'd1;
        end
      end

      if (data_rdy & col_ctr != 5'b00000) begin  // VG BUG
        waddr <= prev_row_base_addr + {12'd0, col_ctr};
      end

      if (eor_n) begin
        wdata <= data_in;
      end

      if (eos_n == 1'b0) begin
        row_count <= '0;
        prev_row_base_addr <= '0;
        waddr <= '0;
        wren <= 1'b0;
      end
    end

  end  //end of ff
endmodule
