// Automatically generated Verilog-2001
module FIR_window(w2
                 ,// clock
                 system1000
                 ,// asynchronous reset: active low
                 system1000_rstn
                 ,result);
  input signed [15:0] w2;
  input system1000;
  input system1000_rstn;
  output [63:0] result;
  wire [47:0] result_0;
  wire [47:0] x;
  wire [47:0] vs;
  wire [63:0] vs_case_scrut;
  wire [63:0] vs_app_arg;
  wire [47:0] x_0;
  wire [15:0] vs_app_arg_0;
  assign result_0 = x;
  
  // register begin
  reg [47:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : FIR_window_register
    if (~ system1000_rstn) begin
      dout <= ({3 {16'sd0}});
    end else begin
      dout <= vs;
    end
  end
  
  assign x = dout;
  // register end
  
  assign vs = x_0;
  
  assign vs_case_scrut = vs_app_arg;
  
  assign vs_app_arg = {vs_app_arg_0,result_0};
  
  assign x_0 = vs_case_scrut[63:16];
  
  assign vs_app_arg_0 = w2;
  
  assign result = {w2,result_0};
endmodule
