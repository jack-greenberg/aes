`ifndef OPCODES_V
  `define OPCODES_V 1

  // Width of variables
  `define W_KEY        128
  `define W_STATE      128 // This is the 128 bit input, intel calls it state
  `define W_ROUNDKEY   128

  `define NUM_ROUNDS 10

  // Define inverse enable/disable
  `define INV_EN       `INV_CTRL'b1
  `define INV_DIS      `INV_CTRL'b0

  // Define passthru enable/disable
  `define PASS         `PASSTHRU_CTRL'b1
  `define NOPASS       `PASSTHRU_CTRL'b0

  // Register Addresses
  `define REG_XMM0 `W_KEY'd0
  `define REG_XMM1 `W_KEY'd1
  `define REG_XMM2 `W_KEY'd2
  `define REG_XMM3 `W_KEY'd3
  `define REG_XMM4 `W_KEY'd4
  `define REG_XMM5 `W_KEY'd5
  `define REG_XMM6 `W_KEY'd6
  `define REG_XMM7 `W_KEY'd7
  `define REG_XMM8 `W_KEY'd8
  `define REG_XMM9 `W_KEY'd9
  `define REG_XMM10 `W_KEY'd10
  `define REG_XMM11 `W_KEY'd11
  `define REG_XMM12 `W_KEY'd12
  `define REG_XMM13 `W_KEY'd13
  `define REG_XMM14 `W_KEY'd14
  `define REG_XMM15 `W_KEY'd15
