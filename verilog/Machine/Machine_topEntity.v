// Automatically generated Verilog-2001
module Machine_topEntity(// clock
                        system1000
                        ,// asynchronous reset: active low
                        system1000_rstn
                        ,result);
  input system1000;
  input system1000_rstn;
  output [12:0] result;
  wire [32:0] x;
  wire [129:0] ds_case_scrut;
  wire [0:0] x_0;
  wire [7:0] seg;
  wire [3:0] an;
  wire [32:0] ds;
  wire [11:0] x_case_scrut;
  wire [0:0] result_0;
  wire [7:0] x_1;
  wire [3:0] x_2;
  assign x = ds_case_scrut[33:1];
  
  Machine_topEntity_w Machine_topEntity_w_ds_case_scrut
  (.result (ds_case_scrut)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn));
  
  assign x_0 = ds[32:32];
  
  assign seg = x_case_scrut[7:0];
  
  assign an = x_case_scrut[11:8];
  
  assign ds = x;
  
  Machine_topEntity1 Machine_topEntity1_x_case_scrut
  (.result (x_case_scrut)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn));
  
  assign result_0 = x_0;
  
  assign x_1 = seg;
  
  assign x_2 = an;
  
  assign result = {result_0
                  ,x_2
                  ,x_1};
endmodule
