// Automatically generated Verilog-2001
module Machine_topEntity(x
                        ,// clock
                        system1000
                        ,// asynchronous reset: active low
                        system1000_rstn
                        ,result);
  input [7:0] x;
  input system1000;
  input system1000_rstn;
  output [11:0] result;
  wire [3:0] app_arg;
  wire [7:0] app_arg_0;
  wire [11:0] tup;
  wire [3:0] x_0;
  wire [7:0] y;
  wire [7:0] result_0;
  wire [3:0] x_1;
  wire [3:0] x_2;
  wire [3:0] x_3;
  wire [3:0] y_0;
  assign result = {app_arg
                  ,app_arg_0};
  
  assign app_arg = x_0;
  
  assign app_arg_0 = y;
  
  Machine_mealy Machine_mealy_tup
  (.result (tup)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.w2 (result_0));
  
  assign x_0 = tup[11:8];
  
  assign y = tup[7:0];
  
  assign result_0 = {x_1,x_2};
  
  assign x_1 = x_3;
  
  assign x_2 = y_0;
  
  assign x_3 = x[7:4];
  
  assign y_0 = x[3:0];
endmodule
