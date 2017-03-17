// Automatically generated Verilog-2001
module Machine_topEntity1(// clock
                         system1000
                         ,// asynchronous reset: active low
                         system1000_rstn
                         ,result);
  input system1000;
  input system1000_rstn;
  output [11:0] result;
  wire [127:0] result_0;
  wire [31:0] result_1;
  wire [32:0] ds;
  wire [31:0] y;
  wire [129:0] ds_case_scrut;
  wire [32:0] x;
  assign result_0 = {4 {result_1}};
  
  assign result_1 = y;
  
  assign ds = x;
  
  assign y = ds[31:0];
  
  Machine_topEntity_w Machine_topEntity_w_ds_case_scrut
  (.result (ds_case_scrut)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn));
  
  assign x = ds_case_scrut[33:1];
  
  Machine_display Machine_display_result
  (.result (result)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.outputs (result_0));
endmodule
