// Automatically generated Verilog-2001
module Machine_mealy(w2
                    ,// clock
                    system1000
                    ,// asynchronous reset: active low
                    system1000_rstn
                    ,result);
  input [7:0] w2;
  input system1000;
  input system1000_rstn;
  output [11:0] result;
  wire [11:0] y;
  wire [31:0] result_0;
  wire [31:0] tup_case_alt;
  wire [19:0] tup_app_arg;
  wire [11:0] tup_app_arg_0;
  wire [3:0] sw;
  wire [3:0] btn;
  wire [19:0] x;
  wire [19:0] x_app_arg;
  wire [19:0] x_0;
  assign result = y;
  
  assign y = result_0[11:0];
  
  assign result_0 = tup_case_alt;
  
  assign tup_case_alt = {tup_app_arg
                        ,tup_app_arg_0};
  
  Machine_update Machine_update_tup_app_arg
  (.result (tup_app_arg)
  ,.sw (sw)
  ,.btn (btn)
  ,.s (x));
  
  Machine_render Machine_render_tup_app_arg_0
  (.result (tup_app_arg_0)
  ,.s (x));
  
  assign sw = w2[7:4];
  
  assign btn = w2[3:0];
  
  // register begin
  reg [19:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_mealy_register
    if (~ system1000_rstn) begin
      dout <= {4'b0000,4'b0000,4'b0000,4'b0000,4'b1110};
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  assign x_app_arg = x_0;
  
  assign x_0 = result_0[31:12];
endmodule
