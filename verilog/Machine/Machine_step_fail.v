// Automatically generated Verilog-2001
module Machine_step_fail(pTS
                        ,pTS_0
                        ,pTS_1
                        ,result);
  input [319:0] pTS;
  input [64:0] pTS_0;
  input [345:0] pTS_1;
  output [794:0] result;
  wire [666:0] app_arg;
  wire [32:0] app_arg_0;
  wire [94:0] action;
  wire [0:0] app_arg_1;
  wire [32:0] case_alt;
  wire [94:0] action_case_alt;
  wire [319:0] pending;
  wire [345:0] state;
  wire [128:0] result_0;
  wire [32:0] case_alt_0;
  wire [94:0] action_case_alt_0;
  wire [94:0] action_case_alt_1;
  wire [64:0] ds4;
  wire [319:0] pending_case_alt;
  wire [345:0] state_case_alt;
  wire [319:0] pending_0;
  wire [32:0] case_alt_1;
  wire [62:0] ds3;
  wire [94:0] action_case_alt_2;
  wire [94:0] action_case_alt_3;
  wire [29:0] ptr;
  wire [64:0] ds5;
  wire [249:0] pending_app_arg;
  wire [127:0] result1;
  wire [31:0] o;
  wire [94:0] action_case_alt_4;
  wire [94:0] action_case_alt_5;
  wire [29:0] ptr_0;
  wire [94:0] ds6;
  wire [94:0] action_case_alt_6;
  wire [29:0] p;
  wire [62:0] x;
  wire [94:0] ds7;
  wire [29:0] p_0;
  wire [62:0] x_0;
  assign result = {app_arg
                  ,action
                  ,app_arg_0};
  
  assign app_arg = {state
                   ,pending
                   ,app_arg_1};
  
  reg [32:0] app_arg_0_reg;
  always @(*) begin
    case(result_0[128:128])
      1'b0 : app_arg_0_reg = {1'b0,32'b00000000000000000000000000000000};
      default : app_arg_0_reg = case_alt;
    endcase
  end
  assign app_arg_0 = app_arg_0_reg;
  
  assign action = action_case_alt;
  
  reg [0:0] app_arg_1_reg;
  always @(*) begin
    case(action[94:93])
      2'b10 : app_arg_1_reg = 1'd0;
      default : app_arg_1_reg = 1'd1;
    endcase
  end
  assign app_arg_1 = app_arg_1_reg;
  
  reg [32:0] case_alt_reg;
  always @(*) begin
    case(state[345:344])
      2'b01 : case_alt_reg = case_alt_0;
      default : case_alt_reg = {1'b0,32'b00000000000000000000000000000000};
    endcase
  end
  assign case_alt = case_alt_reg;
  
  reg [94:0] action_case_alt_reg;
  always @(*) begin
    case(ds4[64:63])
      2'b01 : action_case_alt_reg = action_case_alt_1;
      default : action_case_alt_reg = action_case_alt_0;
    endcase
  end
  assign action_case_alt = action_case_alt_reg;
  
  reg [319:0] pending_reg;
  always @(*) begin
    case(result_0[128:128])
      1'b0 : pending_reg = pending_0;
      default : pending_reg = pending_case_alt;
    endcase
  end
  assign pending = pending_reg;
  
  reg [345:0] state_reg;
  always @(*) begin
    case(result_0[128:128])
      1'b0 : state_reg = pTS_1;
      default : state_reg = state_case_alt;
    endcase
  end
  assign state = state_reg;
  
  Machine_check Machine_check_result_0
  (.result (result_0)
  ,.ds (pending_0));
  
  reg [32:0] case_alt_0_reg;
  always @(*) begin
    case(ds3[62:60])
      3'b100 : case_alt_0_reg = case_alt_1;
      default : case_alt_0_reg = {1'b0,32'b00000000000000000000000000000000};
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  reg [94:0] action_case_alt_0_reg;
  always @(*) begin
    case(ds5[64:63])
      2'b01 : action_case_alt_0_reg = action_case_alt_3;
      default : action_case_alt_0_reg = action_case_alt_2;
    endcase
  end
  assign action_case_alt_0 = action_case_alt_0_reg;
  
  assign action_case_alt_1 = {2'b00,ptr,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign ds4 = pending[319:255];
  
  Machine_initiate Machine_initiate_pending_case_alt
  (.result (pending_case_alt)
  ,.ds (pending_app_arg));
  
  Machine_step2 Machine_step2_state_case_alt
  (.result (state_case_alt)
  ,.ds (pTS_1)
  ,.ds1 (result1));
  
  Machine_service Machine_service_pending_0
  (.result (pending_0)
  ,.pending (pTS)
  ,.ds (pTS_0));
  
  assign case_alt_1 = {1'b1,o};
  
  assign ds3 = state[62:0];
  
  reg [94:0] action_case_alt_2_reg;
  always @(*) begin
    case(ds6[94:93])
      2'b01 : action_case_alt_2_reg = action_case_alt_5;
      default : action_case_alt_2_reg = action_case_alt_4;
    endcase
  end
  assign action_case_alt_2 = action_case_alt_2_reg;
  
  assign action_case_alt_3 = {2'b00,ptr_0,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign ptr = ds4[62:33];
  
  assign ds5 = pending[254:190];
  
  Machine_step1 Machine_step1_pending_app_arg
  (.result (pending_app_arg)
  ,.ds (state));
  
  assign result1 = result_0[127:0];
  
  assign o = ds3[59:28];
  
  reg [94:0] action_case_alt_4_reg;
  always @(*) begin
    case(ds7[94:93])
      2'b01 : action_case_alt_4_reg = action_case_alt_6;
      default : action_case_alt_4_reg = {2'b10,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign action_case_alt_4 = action_case_alt_4_reg;
  
  assign action_case_alt_5 = {2'b01,p,x};
  
  assign ptr_0 = ds5[62:33];
  
  assign ds6 = pending[189:95];
  
  assign action_case_alt_6 = {2'b01,p_0,x_0};
  
  assign p = ds6[92:63];
  
  assign x = ds6[62:0];
  
  assign ds7 = pending[94:0];
  
  assign p_0 = ds7[92:63];
  
  assign x_0 = ds7[62:0];
endmodule
