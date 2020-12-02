`include "lib/opcodes.v"
`include "lib/debug.v"
`timescale 1ns / 1 ps

module DECODE
 (input [`W_CPU-1:0] inst,

  // Output registers
  output reg [`W_REG-1:0]     inv_ctrl,      // Register Write Address
  output reg [`W_REG-1:0]     passthru_ctrl,     // Register Read Address 1
