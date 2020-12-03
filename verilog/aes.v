`include "lib/opcodes.v"
`timescale 1ns / 1ps

module AES (
  input clk,
  input rst,
  input [`W_DATA-1:0] plaintext,
  input [`W_KEY-1:0] key,
  output reg [`W_DATA-1:0] ciphertext
);

  // Data register
  reg [`W_DATA-1:0] data;

  initial begin
    // Copy plaintext to data in the beginning
    data = plaintext;
  end

  ELU encryptor(
    .clk(clk),
    .rst(rst),
    .data_in(data),
    .data_out(data)
  );

  always @(posedge clk) begin
    
    //Is the instruction a SYSCALL?
    // if (instruction[`FLD_OPCODE] == `OP_ZERO &&
    //     instruction[`FLD_FUNCT]  == `F_SYSCAL) begin
    //     // Currently doesn't work for this part. When calling Syscall, not sure how to make
    //     // it read from the $v0 register
    // 
    //     case(rd1)
    //       1 : $display("SYSCALL  1: a0 = %x",rd2);
    //       10: begin
    //           $display("SYSCALL 10: Exiting...");
    //           $finish;
    //         end
    //       default:;
    //     endcase
    // end
  end


endmodule
