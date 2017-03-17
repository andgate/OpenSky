// Automatically generated Verilog-2001
module Machine_step(ds
                   ,ds1
                   ,result);
  input [666:0] ds;
  input [64:0] ds1;
  output [794:0] result;
  wire [666:0] app_arg;
  wire [794:0] case_alt;
  wire [794:0] case_alt_0;
  wire [794:0] step_failOut;
  wire [794:0] result_0;
  wire [345:0] state;
  wire [319:0] pending;
  wire [0:0] ds2;
  assign app_arg = {state
                   ,pending
                   ,1'd1};
  
  assign case_alt = {app_arg
                    ,{2'b10,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                    ,{1'b0,32'b00000000000000000000000000000000}};
  
  reg [794:0] case_alt_0_reg;
  always @(*) begin
    case(ds1[64:63])
      2'b00 : case_alt_0_reg = case_alt;
      default : case_alt_0_reg = step_failOut;
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  Machine_step_fail Machine_step_fail_step_failOut
  (.result (step_failOut)
  ,.pTS (pending)
  ,.pTS_0 (ds1)
  ,.pTS_1 (state));
  
  reg [794:0] result_0_reg;
  always @(*) begin
    case(ds2)
      1'b0 : result_0_reg = step_failOut;
      default : result_0_reg = case_alt_0;
    endcase
  end
  assign result_0 = result_0_reg;
  
  assign state = ds[666:321];
  
  assign pending = ds[320:1];
  
  assign ds2 = ds[0:0];
  
  assign result = result_0;
endmodule
