// Automatically generated Verilog-2001
module Machine_unbinarize(w
                         ,result);
  input [63:0] w;
  output [62:0] result;
  wire [29:0] app_arg;
  wire [29:0] app_arg_0;
  wire [29:0] app_arg_1;
  wire [29:0] app_arg_2;
  wire [31:0] app_arg_3;
  wire [31:0] app_arg_4;
  wire [31:0] app_arg_5;
  wire [62:0] case_alt;
  wire [62:0] case_alt_0;
  wire [3:0] ds;
  // slice begin
  wire [63:0] bv;
  assign bv = w;
  assign app_arg = bv[59 : 30];
  // slice end
  
  assign app_arg_0 = app_arg;
  
  // slice begin
  wire [63:0] bv_0;
  assign bv_0 = w;
  assign app_arg_1 = bv_0[29 : 0];
  // slice end
  
  assign app_arg_2 = app_arg_1;
  
  // slice begin
  wire [63:0] bv_1;
  assign bv_1 = w;
  assign app_arg_3 = bv_1[31 : 0];
  // slice end
  
  assign app_arg_4 = app_arg_3;
  
  assign app_arg_5 = app_arg_4;
  
  assign case_alt = {3'b011,app_arg_0,app_arg_2};
  
  assign case_alt_0 = {3'b100,app_arg_5,28'b0000000000000000000000000000};
  
  // slice begin
  wire [63:0] bv_2;
  assign bv_2 = w;
  assign ds = bv_2[63 : 60];
  // slice end
  
  reg [62:0] result_reg;
  always @(*) begin
    case(ds)
      4'b0000 : result_reg = {3'b000,60'b000000000000000000000000000000000000000000000000000000000000};
      4'b0001 : result_reg = {3'b001,60'b000000000000000000000000000000000000000000000000000000000000};
      4'b0010 : result_reg = {3'b010,60'b000000000000000000000000000000000000000000000000000000000000};
      4'b0011 : result_reg = case_alt;
      4'b0100 : result_reg = case_alt_0;
      default : result_reg = {63 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
