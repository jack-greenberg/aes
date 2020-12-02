`ifndef OPCODES_V
  `define OPCODES_V 1

  // Width of variables
  `define W_KEY        128
  `define W_TEXT       128
  `define W_ROUNDKEY   128

  // Define inverse enable/disable
  `define INV_EN       `INV_CTRL'b1
  `define INV_DIS      `INV_CTRL'b0

  // Define passthru enable/disable
  `define PASS         `PASSTHRU_CTRL'b1
  `define NOPASS       `PASSTHRU_CTRL'b0


