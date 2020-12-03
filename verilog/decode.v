`include "lib/opcodes.v"
`include "lib/debug.v"
`timescale 1ns / 1 ps

module DECODE
  (input [`W_CPU-1:0] inst,

  // Output registers
  output reg [`W_REG-1:0]     inv_ctrl,      // Register Write Address
  output reg [`W_REG-1:0]     passthru_ctrl,     // Register Read Address 1
  );

	always @(inst) begin
    if (`DEBUG_DECODE)
      /* verilator lint_off STMTDLY */
      #1 // Delay Slightly
      $display("DECODER: inst = %x inv_ctrl = %x passthru_ctrl = %x ",inst, inv_ctrl, passthru_ctrl);
      /* verilator lint_on STMTDLY */
  end


  always @* begin
    case(inst)
			`AESENC: begin
				passthru_ctrl = 0; inv_ctrl = 0; 
			end
			`AESENCLAST: begin
				passthru_ctrl = 1; inv_ctrl = 0; 
			end
			`AESDEC: begin
				passthru_ctrl = 0; inv_ctrl = 1; 
			end
			`AESDECLAST: begin
				passthru_ctrl = 1; inv_ctrl = 1; 
			end



endmodule