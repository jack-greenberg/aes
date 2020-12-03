`include "lib/opcodes.v"
`timescale 1ns / 1ps

module SHIFTROWS (
  input clk,
  input      [`W_DATA-1:0] data,
  output reg [`W_DATA-1:0] new_data
);

  always @(posedge clk) begin
    new_data[(4*8)-1:0]       <= data[31:0];
    new_data[(8*8)-1:(4*8)]   <= {data[(7*8)-1:(4*8)], data[(8*8)-1:(7*8)]};
    new_data[(12*8)-1:(8*8)]  <= {data[(10*8)-1:(8*8)], data[(12*8)-1:(10*8)]};
    new_data[(16*8)-1:(12*8)] <= {data[(13*8)-1:(12*8)], data[(16*8)-1:(13*8)]};
  end


endmodule
