// Automatically generated Verilog-2001
module Machine_cpu(ramstatus
                  ,// clock
                  system1000
                  ,// asynchronous reset: active low
                  system1000_rstn
                  ,result);
  input [64:0] ramstatus;
  input system1000;
  input system1000_rstn;
  output [128:0] result;
  wire [94:0] x;
  wire [32:0] x_0;
  wire [0:0] x_1;
  wire [0:0] x_case_alt;
  wire [794:0] w;
  wire [666:0] state;
  wire [94:0] x_2;
  wire [32:0] x_3;
  wire [345:0] state_0;
  wire [666:0] state_app_arg;
  wire [666:0] x_4;
  wire [29:0] state_app_arg_0;
  assign result = {x,x_0,x_1};
  
  assign x = x_2;
  
  assign x_0 = x_3;
  
  assign x_1 = x_case_alt;
  
  reg [0:0] x_case_alt_reg;
  always @(*) begin
    case(state_0[345:344])
      2'b10 : x_case_alt_reg = 1'd0;
      default : x_case_alt_reg = 1'd1;
    endcase
  end
  assign x_case_alt = x_case_alt_reg;
  
  Machine_step Machine_step_w
  (.result (w)
  ,.ds (state)
  ,.ds1 (ramstatus));
  
  assign state_app_arg_0 = 30'd1;
  
  // register begin
  reg [666:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_cpu_register
    if (~ system1000_rstn) begin
      dout <= {{2'b00,344'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000},{{2'b01,state_app_arg_0,33'b000000000000000000000000000000000},{2'b00,63'b000000000000000000000000000000000000000000000000000000000000000},{2'b00,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000},{2'b00,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}},1'd0};
    end else begin
      dout <= state_app_arg;
    end
  end
  
  assign state = dout;
  // register end
  
  assign x_2 = w[127:33];
  
  assign x_3 = w[32:0];
  
  assign state_0 = state[666:321];
  
  assign state_app_arg = x_4;
  
  assign x_4 = w[794:128];
endmodule
