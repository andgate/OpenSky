// Automatically generated Verilog-2001
module Machine_mealy(w2
                    ,// clock
                    system1000
                    ,// asynchronous reset: active low
                    system1000_rstn
                    ,result);
  input [15:0] w2;
  input system1000;
  input system1000_rstn;
  output [11:0] result;
  wire [11:0] y;
  wire [13:0] result_0;
  wire [1:0] x;
  wire [1:0] x_app_arg;
  wire [1:0] x_0;
  assign result = y;
  
  assign y = result_0[11:0];
  
  Machine_multiplex Machine_multiplex_result_0
  (.result (result_0)
  ,.an (x)
  ,.v (w2));
  
  // register begin
  reg [1:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_mealy_register
    if (~ system1000_rstn) begin
      dout <= 2'b00;
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  assign x_app_arg = x_0;
  
  assign x_0 = result_0[13:12];
endmodule
