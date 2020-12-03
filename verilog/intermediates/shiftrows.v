`include "lib/opcodes.v"
`timescale 1ns / 1ps

module ShiftRows (
  input clk,
  input      [`W_DATA-1:0] data_in,
  output reg [`W_DATA-1:0] data_out
);

  always @(posedge clk) begin
    data_out[(4*8)-1:0]       <= data_in[31:0];
    data_out[(8*8)-1:(4*8)]   <= {data_in[(7*8)-1:(4*8)], data_in[(8*8)-1:(7*8)]};
    data_out[(12*8)-1:(8*8)]  <= {data_in[(10*8)-1:(8*8)], data_in[(12*8)-1:(10*8)]};
    data_out[(16*8)-1:(12*8)] <= {data_in[(13*8)-1:(12*8)], data_in[(16*8)-1:(13*8)]};
  end


endmodule
