`include "lib/opcodes.v"
`timescale 1ns / 1ps

module MixColumns (
  input inv,
  input  [`7:0] data_in [3:0] [3:0],
  output [`W_STATE-1:0] data_out
);
  data_out[7:0]     = ({02} * data_in[7:0]) + ({03} * data_in[15:8]) + data_in[23:16] + data_in[31:24]
  data_out[15:8]    = data_in[7:0] + ({02} * data_in[15:8]) + ({03} * data_in[23:16]) + data_in[31:24]
  data_out[23:16]   = data_in[7:0] + data_in[15:8] + ({02} * data_in[23:16]) + ({03} * data_in[31:24])
  data_out[31:24]   = ({03} * data_in[7:0]) + data_in[15:8] + data_in[23:16] + ({02} * data_in[31:24])
  data_out[39:32]   = ({02} * data_in[39:32]) + ({03} * data_in[47:40]) + data_in[55:48] + data_in[63:56]
  data_out[47:40]   = data_in[39:32] + ({02} * data_in[47:40]) + ({03} * data_in[55:48]) + data_in[63:56]
  data_out[55:48]   = data_in[39:32] + data_in[47:40] + ({02} * data_in[55:48]) + ({03} * data_in[63:56])
  data_out[63:56]   = ({03} * data_in[39:32]) + data_in[47:40] + data_in[55:48] + ({02} * data_in[63:56])
  data_out[71:64]   = ({02} * data_in[71:64]) + ({03} * data_in[79:72]) + data_in[87:80] + data_in[95:88]
  data_out[79:72]   = data_in[71:64] + ({02} * data_in[79:72]) + ({03} * data_in[87:80]) + data_in[95:88]
  data_out[87:80]   = data_in[71:64] + data_in[79:72] + ({02} * data_in[87:80]) + ({03} * data_in[95:88])
  data_out[95:88]   = ({03} * data_in[71:64]) + data_in[79:72] + data_in[87:80] + ({02} * data_in[95:88])
  data_out[103:96]  = ({02} * data_in[103:96]) + ({03} * data_in[111:104]) + data_in[119:112] + data_in[127:120]
  data_out[111:104] = data_in[103:96] + ({02} * data_in[111:104]) + ({03} * data_in[119:112]) + data_in[127:120]
  data_out[119:112] = data_in[103:96] + data_in[111:104] + ({02} * data_in[119:112]) + ({03} * data_in[127:120])
  data_out[127:120] = ({03} * data_in[103:96]) + data_in[111:104] + data_in[119:112] + ({02} * data_in[127:120])
endmodule
