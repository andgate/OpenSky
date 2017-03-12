// Automatically generated SystemVerilog-2005
module FIR_testInput(// clock
                    system1000
                    ,// asynchronous reset: active low
                    system1000_rstn
                    ,result);
  input logic system1000;
  input logic system1000_rstn;
  output logic signed [15:0] result;
  FIR_stimuliGenerator_sstimuliGenerator FIR_stimuliGenerator_sstimuliGenerator_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn));
endmodule
