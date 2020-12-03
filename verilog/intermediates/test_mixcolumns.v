`timescale 1ns / 1ps
`include "../lib/opcodes.v"

module test_mixcolumns;
  wire clk, rst;
  reg [`W_DATA-1:0] in;
  reg [`W_DATA-1:0] out;

  MIXCOLUMNS DUT(.clk(clk), .data(in), .new_data(out));

  initial begin
    $dumpfile("test_mixcolumns.vcd");
    $dumpvars(0, test_mixcolumns);

    clk = 1'b0;
    rst = 1'b1;

    #40 rst = 1'b0;

    in = 128'h627a6f6644b109c82b18330a81c3b3e5;

    if (in == out) begin
      $display("Passed");
    end else begin
      $display("Failed");
    end
    
  end

  always #5 clk = ~clk;

endmodule
