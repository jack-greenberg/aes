`include "lib/opcodes.v"
`timescale 1ns / 1ps

module AES (
  input clk,
  input rst,
  input [`W_STATE-1:0] plaintext,
  input [`W_KEY-1:0] key,
  output reg [`W_STATE-1:0] ciphertext
);

endmodule
