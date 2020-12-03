`ifndef OPCODES_V
  `define OPCODES_V 1

  // Width of variables
  `define W_KEY        128
  `define W_DATA      128 // This is the 128 bit input, intel calls it state
  `define W_ROUNDKEY   128

  `define NUM_ROUNDS 10

  // Define inverse enable/disable
  `define INV_EN       `INV_CTRL'b1
  `define INV_DIS      `INV_CTRL'b0

  // Define passthru enable/disable
  `define PASS         `PASSTHRU_CTRL'b1
  `define NOPASS       `PASSTHRU_CTRL'b0

  // Define instructions
  `define AESENC      1  //This seems a bit sus to be numbering it like this, we might need to think of another way
  `define AESENCLAST  2
  `define AESDEC      3
  `define AESDECLAST  4

  // Byte fields
  `define BYTE0      07:00
  `define BYTE1      15:08
  `define BYTE2      23:16
  `define BYTE3      31:24
  `define BYTE4      39:32
  `define BYTE5      47:40
  `define BYTE6      55:48
  `define BYTE7      63:56
  `define BYTE8      71:64
  `define BYTE9      79:72
  `define BYTE10     87:80
  `define BYTE11     95:88
  `define BYTE12     103:96
  `define BYTE13     111:104
  `define BYTE14     119:112
  `define BYTE15     127:120

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
