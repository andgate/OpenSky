// Automatically generated Verilog-2001
module Machine_topEntity(x
                        ,result);
  input [1:0] x;
  output [1:0] result;
  Machine_adder Machine_adder_result
  (.result (result),.sw (x));
endmodule
