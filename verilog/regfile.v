`include "lib/opcodes.v"
`timescale 1ns/1ps

module REGFILE (
  input clk,
  input rst,
  input data_reg,
  input key_reg,
  output reg [`W_DATA-1:0] data,
  output reg [`W_KEY-1:0] key
);
  
  // Storage element
  // 15 registers
  reg [`W_KEY-1:0] rf [15:0];

  always @(posedge clk,posedge rst) begin
    if (rst) begin
      for(int i = 0; i<32; i=i+1) 
        rf[i] = 0;
    end
    else begin
      if (`DEBUG_REGFILE) begin
        /* verilator lint_off STMTDLY */
        #1 // Delay slightly to correct print timing issue
        $display("REG FILE: data_reg = %d", data_reg);
        $display("          key_reg  = %d", key_reg);

        /* verilator lint_on STMTDLY */
        $display("$xmm0  = %x $xmm1 = %x $xmm2 = %x $xmm3 = %x",rf[`REG_XMM0], rf[`REG_XMM1],rf[`REG_XMM2],rf[`REG_XMM3]);
        $display("$xmm4  = %x $xmm5 = %x $xmm6 = %x $xmm7 = %x",rf[`REG_XMM4], rf[`REG_XMM5],rf[`REG_XMM6],rf[`REG_XMM7]);
        $display("$xmm8  = %x $xmm9 = %x $xmm10 = %x $xmm11 = %x",rf[`REG_XMM8], rf[`REG_XMM9],rf[`REG_XMM10],rf[`REG_XMM11]);
        $display("$xmm12  = %x $xmm13 = %x $xmm14 = %x $xmm15 = %x",rf[`REG_XMM12], rf[`REG_XMM13],rf[`REG_XMM14],rf[`REG_XMM15]);
      end
    end
  end

  assign data = rf[data_reg]:0;
  assign key  = rf[key_reg]:0;

endmodule
