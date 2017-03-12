// Automatically generated Verilog-2001
module FIR_testInput(// clock
                    system1000
                    ,// asynchronous reset: active low
                    system1000_rstn
                    ,result);
  input system1000;
  input system1000_rstn;
  output signed [15:0] result;
  FIR_stimuliGenerator_sstimuliGenerator FIR_stimuliGenerator_sstimuliGenerator_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn));
endmodule
