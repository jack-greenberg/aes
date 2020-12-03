`include "lib/opcodes.v"
`timescale 1ns / 1ps

module MIXCOLUMNS (
  input clk,
  input  [`W_DATA-1:0] data,
  output reg [`W_DATA-1:0] new_data
);
  
  always @(posedge clk) begin
    new_data[`BYTE0]   <= (2*data[`BYTE0]) + (3*data[`BYTE1]) + data[`BYTE2] + data[`BYTE3];
    new_data[`BYTE1]   <= data[`BYTE0] + (2 * data[`BYTE1]) + (3 * data[`BYTE2]) + data[`BYTE3];
    new_data[`BYTE2]   <= data[`BYTE0] + data[`BYTE1] + (2 * data[`BYTE2]) + (3 * data[`BYTE3]);
    new_data[`BYTE3]   <= (3 * data[`BYTE0]) + data[`BYTE1] + data[`BYTE2] + (2 * data[`BYTE3]);
    new_data[`BYTE4]   <= (2 * data[`BYTE4]) + (3 * data[`BYTE5]) + data[`BYTE6] + data[`BYTE7];
    new_data[`BYTE5]   <= data[`BYTE4] + (2 * data[`BYTE5]) + (3 * data[`BYTE6]) + data[`BYTE7];
    new_data[`BYTE6]   <= data[`BYTE4] + data[`BYTE5] + (2 * data[`BYTE6]) + (3 * data[`BYTE7]);
    new_data[`BYTE7]   <= (3 * data[`BYTE4]) + data[`BYTE5] + data[`BYTE6] + (2 * data[`BYTE7]);
    new_data[`BYTE8]   <= (2 * data[`BYTE8]) + (3 * data[`BYTE9]) + data[`BYTE10] + data[`BYTE11];
    new_data[`BYTE9]   <= data[`BYTE8] + (2 * data[`BYTE9]) + (3 * data[`BYTE10]) + data[`BYTE11];
    new_data[`BYTE10]  <= data[`BYTE8] + data[`BYTE9] + (2 * data[`BYTE10]) + (3 * data[`BYTE11]);
    new_data[`BYTE11]  <= (3 * data[`BYTE8]) + data[`BYTE9] + data[`BYTE10] + (2 * data[`BYTE11]);
    new_data[`BYTE12]  <= (2 * data[`BYTE12]) + (3 * data[`BYTE13]) + data[`BYTE14] + data[`BYTE15];
    new_data[`BYTE13]  <= data[`BYTE12] + (2 * data[`BYTE13]) + (3 * data[`BYTE14]) + data[`BYTE15];
    new_data[`BYTE14]  <= data[`BYTE12] + data[`BYTE13] + (2 * data[`BYTE14]) + (3 * data[`BYTE15]);
    new_data[`BYTE15]  <= (3 * data[`BYTE12]) + data[`BYTE13] + data[`BYTE14] + (2 * data[`BYTE15]);
  end
endmodule
