`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2025 04:12:21 PM
// Design Name: 
// Module Name: bg_manager
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


module bg_manager (
    input logic cpu_clk,
    input logic [16:0] addr,
    
    output logic [1:0] data
);




  bg1_rom bg1_rom (
      .clka (cpu_clk),
      .addra(addr),
      .douta(data)
  );

endmodule
