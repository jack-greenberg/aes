`include "lib/opcodes.v"
`timescale 1ns / 1ps

module ELU (
  input clk,
  input rst,
  input      [`W_DATA-1:0] data_in,
  input      [`W_KEY-1:0]  roundkey,
  output reg [`W_DATA-1:0] data_out
);

  reg inv = 0;

  reg [`W_DATA-1:0] data_intermediate_1;
  SUBBYTES sub (
    .clk(clk),
    .inv_ctrl(inv),
    .data(data_in),
    .new_data(data_intermediate_1)
  );

  reg [`W_DATA-1:0] data_intermediate_2;
  SHIFTROWS shift (
    .clk(clk),
    .data(data_intermediate_1),
    .new_data(data_intermediate_2)
  );

  reg [`W_DATA-1:0] data_intermediate_3;
  MIXCOLUMNS mix (
    .clk(clk),
    .data(data_intermediate_2),
    .new_data(data_intermediate_3)
  );

  ADDROUNDKEY ark (
    .clk(clk),
    .data(data_intermediate_3),
    .roundkey(roundkey),
    .new_data(data_out)
  );


  always @(posedge clk) begin

  end

endmodule
