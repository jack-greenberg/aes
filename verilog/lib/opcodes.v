`ifndef OPCODES_V
  `define OPCODES_V 1

  // Width of variables
  `define W_KEY        128
  `define W_ROUNDKEY   128
  `define W_DATA       128 // This is the 128 bit input
  
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
