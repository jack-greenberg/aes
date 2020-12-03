`include "lib/opcodes.v"
`include "lib/debug.v"

`timescale 1ns / 1ps

// Take an input data block of 128 bits and xors it with a round key of 128 bits, returning 128 bits

module ADDROUNDKEY
 (input                         clk, // not sure if we need this?
  input      [`W_KEY-1:0]       roundkey,
  input      [`W_DATA-1:0]      data,
  output reg [`W_DATA-1:0]      new_data,
 );

  always @* begin
    if (`DEBUG_ADDROUNDKEY)
      /* verilator lint_off STMTDLY */
      #1 // Delay Slightly
      $display("ADDROUNDKEY: roundkey = %d data = %d processed_text = %d",roundkey, data, new_data);
      /* verilator lint_on STMTDLY */
  end

  // always @(posedge clk) begin
  always @* begin
    // Compute processed text
    new_data = roundkey ^ data
  end
  
endmodule