// Automatically generated Verilog-2001
module Machine_multiplex(an
                        ,v
                        ,result);
  input [1:0] an;
  input [15:0] v;
  output [13:0] result;
  wire [1:0] app_arg;
  wire [3:0] app_arg_0;
  wire signed [63:0] app_arg_1;
  wire [15:0] app_arg_2;
  wire [3:0] app_arg_3;
  wire [7:0] app_arg_4;
  wire [11:0] app_arg_5;
  assign app_arg = an + 2'b01;
  
  Machine_anode Machine_anode_app_arg_0
  (.result (app_arg_0),.ds (an));
  
  Machine_sh Machine_sh_app_arg_1
  (.result (app_arg_1),.ds (an));
  
  assign app_arg_2 = v >> app_arg_1;
  
  assign app_arg_3 = $unsigned(app_arg_2);
  
  Machine_nibbleToSeg Machine_nibbleToSeg_app_arg_4
  (.result (app_arg_4)
  ,.v (app_arg_3));
  
  assign app_arg_5 = {app_arg_0
                     ,app_arg_4};
  
  assign result = {app_arg
                  ,app_arg_5};
endmodule
