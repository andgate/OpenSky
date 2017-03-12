// Automatically generated Verilog-2001
module FIR_expectedOutput(arg
                         ,// clock
                         system1000
                         ,// asynchronous reset: active low
                         system1000_rstn
                         ,result);
  input signed [15:0] arg;
  input system1000;
  input system1000_rstn;
  output [0:0] result;
  FIR_outputVerifier_soutputVerifier FIR_outputVerifier_soutputVerifier_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.i (arg));
endmodule
