// Automatically generated Verilog-2001
module Machine_mealy_0(w2
                      ,// clock
                      system1000
                      ,// asynchronous reset: active low
                      system1000_rstn
                      ,result);
  input [11:0] w2;
  input system1000;
  input system1000_rstn;
  output [24:0] result;
  wire [24:0] y;
  wire [32:0] result_0;
  wire [7:0] x;
  wire [7:0] x_app_arg;
  wire [7:0] x_0;
  assign result = y;
  
  assign y = result_0[24:0];
  
  Machine_cpu Machine_cpu_result_0
  (.result (result_0)
  ,.s (x)
  ,.i (w2));
  
  // register begin
  reg [7:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_mealy_0_register
    if (~ system1000_rstn) begin
      dout <= 8'b00000000;
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  assign x_app_arg = x_0;
  
  assign x_0 = result_0[32:25];
endmodule
