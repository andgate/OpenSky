// Automatically generated SystemVerilog-2005
module FIR_topEntity_0(arg
                      ,// clock
                      system1000
                      ,// asynchronous reset: active low
                      system1000_rstn
                      ,result);
  input logic signed [15:0] arg;
  input logic system1000;
  input logic system1000_rstn;
  output logic signed [15:0] result;
  FIR_fir_sfir FIR_fir_sfir_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.x_t (arg));
endmodule
