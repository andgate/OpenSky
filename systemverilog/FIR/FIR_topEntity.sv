// Automatically generated SystemVerilog-2005
module FIR_topEntity(input_0
                    ,// clock
                    system1000
                    ,// asynchronous reset: active low
                    system1000_rstn
                    ,output_0);
  input logic signed [15:0] input_0;
  input logic system1000;
  input logic system1000_rstn;
  output logic signed [15:0] output_0;
  FIR_topEntity_0 FIR_topEntity_0_inst
  (.arg (input_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.result (output_0));
endmodule
