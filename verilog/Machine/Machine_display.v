// Automatically generated Verilog-2001
module Machine_display(outputs
                      ,// clock
                      system1000
                      ,// asynchronous reset: active low
                      system1000_rstn
                      ,result);
  input [127:0] outputs;
  input system1000;
  input system1000_rstn;
  output [11:0] result;
  wire [3:0] app_arg;
  wire [7:0] app_arg_0;
  wire signed [63:0] x_app_arg;
  wire signed [63:0] wild_app_arg;
  wire signed [63:0] wild;
  wire [31:0] result_0;
  wire [7:0] result_1;
  wire [1:0] active_app_arg;
  wire [1:0] active;
  Machine_anode Machine_anode_app_arg
  (.result (app_arg)
  ,.ds1 (active));
  
  Machine_convert Machine_convert_app_arg_0
  (.result (app_arg_0)
  ,.ds1 (result_0));
  
  assign x_app_arg = wild;
  
  assign wild_app_arg = $unsigned(active);
  
  assign wild = $signed(wild_app_arg);
  
  // indexVec begin
  wire [31:0] vec [0:4-1];
  
  wire [127:0] vecflat;
  assign vecflat = outputs;
  genvar i;
  generate
  for (i=0; i < 4; i=i+1) begin : mk_array
    assign vec[(4-1)-i] = vecflat[i*32+:32];
  end
  endgenerate
  
  assign result_0 = vec[x_app_arg];
  // indexVec end
  
  assign result_1 = 8'b11111111 ^ app_arg_0;
  
  Machine_next Machine_next_active_app_arg
  (.result (active_app_arg)
  ,.ds1 (active));
  
  // register begin
  reg [1:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_display_register
    if (~ system1000_rstn) begin
      dout <= 2'd0;
    end else begin
      dout <= active_app_arg;
    end
  end
  
  assign active = dout;
  // register end
  
  assign result = {app_arg
                  ,result_1};
endmodule
