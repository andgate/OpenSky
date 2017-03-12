// Automatically generated Verilog-2001
module FIR_topEntity_0(arg
                      ,// clock
                      system1000
                      ,// asynchronous reset: active low
                      system1000_rstn
                      ,result);
  input signed [15:0] arg;
  input system1000;
  input system1000_rstn;
  output signed [15:0] result;
  FIR_fir_sfir FIR_fir_sfir_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.x_t (arg));
endmodule
