// Automatically generated SystemVerilog-2005
module FIR_expectedOutput(arg
                         ,// clock
                         system1000
                         ,// asynchronous reset: active low
                         system1000_rstn
                         ,result);
  input logic signed [15:0] arg;
  input logic system1000;
  input logic system1000_rstn;
  output logic [0:0] result;
  FIR_outputVerifier_soutputVerifier FIR_outputVerifier_soutputVerifier_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.i (arg));
endmodule
