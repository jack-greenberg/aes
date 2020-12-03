`include "lib/opcodes.v"
`timescale 1ns / 1ps

module MixColumns (
  input clk,
  input  [`W_DATA-1:0] data_in,
  output reg [`W_DATA-1:0] data_out
);
  
  always @(posedge clk) begin
    data_out[`BYTE0]   <= (2*data_in[`BYTE0]) + (3*data_in[`BYTE1]) + data_in[`BYTE2] + data_in[`BYTE3];
    data_out[`BYTE1]   <= data_in[`BYTE0] + (2 * data_in[`BYTE1]) + (3 * data_in[`BYTE2]) + data_in[`BYTE3];
    data_out[`BYTE2]   <= data_in[`BYTE0] + data_in[`BYTE1] + (2 * data_in[`BYTE2]) + (3 * data_in[`BYTE3]);
    data_out[`BYTE3]   <= (3 * data_in[`BYTE0]) + data_in[`BYTE1] + data_in[`BYTE2] + (2 * data_in[`BYTE3]);
    data_out[`BYTE4]   <= (2 * data_in[`BYTE4]) + (3 * data_in[`BYTE5]) + data_in[`BYTE6] + data_in[`BYTE7];
    data_out[`BYTE5]   <= data_in[`BYTE4] + (2 * data_in[`BYTE5]) + (3 * data_in[`BYTE6]) + data_in[`BYTE7];
    data_out[`BYTE6]   <= data_in[`BYTE4] + data_in[`BYTE5] + (2 * data_in[`BYTE6]) + (3 * data_in[`BYTE7]);
    data_out[`BYTE7]   <= (3 * data_in[`BYTE4]) + data_in[`BYTE5] + data_in[`BYTE6] + (2 * data_in[`BYTE7]);
    data_out[`BYTE8]   <= (2 * data_in[`BYTE8]) + (3 * data_in[`BYTE9]) + data_in[`BYTE10] + data_in[`BYTE11];
    data_out[`BYTE9]   <= data_in[`BYTE8] + (2 * data_in[`BYTE9]) + (3 * data_in[`BYTE10]) + data_in[`BYTE11];
    data_out[`BYTE10]  <= data_in[`BYTE8] + data_in[`BYTE9] + (2 * data_in[`BYTE10]) + (3 * data_in[`BYTE11]);
    data_out[`BYTE11]  <= (3 * data_in[`BYTE8]) + data_in[`BYTE9] + data_in[`BYTE10] + (2 * data_in[`BYTE11]);
    data_out[`BYTE12]  <= (2 * data_in[`BYTE12]) + (3 * data_in[`BYTE13]) + data_in[`BYTE14] + data_in[`BYTE15];
    data_out[`BYTE13]  <= data_in[`BYTE12] + (2 * data_in[`BYTE13]) + (3 * data_in[`BYTE14]) + data_in[`BYTE15];
    data_out[`BYTE14]  <= data_in[`BYTE12] + data_in[`BYTE13] + (2 * data_in[`BYTE14]) + (3 * data_in[`BYTE15]);
    data_out[`BYTE15]  <= (3 * data_in[`BYTE12]) + data_in[`BYTE13] + data_in[`BYTE14] + (2 * data_in[`BYTE15]);
  end
endmodule
