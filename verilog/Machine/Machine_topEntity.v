// Automatically generated Verilog-2001
module Machine_topEntity(x
                        ,result);
  input [1:0] x;
  output [0:0] result;
  wire [0:0] case_alt;
  wire [0:0] a;
  wire [0:0] b;
  assign case_alt = a & b;
  
  assign a = x[1:1];
  
  assign b = x[0:0];
  
  assign result = case_alt;
endmodule
