// Automatically generated Verilog-2001
module Machine_fBitsBitVector_crotate_swcrotate(pTS
                                               ,result);
  input [3:0] pTS;
  output [3:0] result;
  // rotateL begin
  wire [2*4-1:0] n;
  assign n = {pTS,pTS} << (64'sd1);
  assign result = n[2*4-1 : 4];
  // rotateL end
endmodule
