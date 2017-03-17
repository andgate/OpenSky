// Automatically generated Verilog-2001
module Machine_binarize(ski
                       ,result);
  input [62:0] ski;
  output [63:0] result;
  wire [29:0] app_arg;
  wire [33:0] app_arg_0;
  wire [29:0] app_arg_1;
  wire [31:0] case_alt;
  wire [31:0] o;
  wire [31:0] app_arg_2;
  wire [63:0] case_alt_0;
  wire [29:0] a;
  wire [29:0] b;
  wire [63:0] case_alt_1;
  wire [31:0] o_0;
  assign app_arg = a;
  
  assign app_arg_0 = {4'b0011,app_arg};
  
  assign app_arg_1 = b;
  
  assign case_alt = o;
  
  assign o = o_0;
  
  assign app_arg_2 = case_alt;
  
  assign case_alt_0 = {app_arg_0,app_arg_1};
  
  assign a = ski[59:30];
  
  assign b = ski[29:0];
  
  assign case_alt_1 = {({4'b0100,28'b0000000000000000000000000000}),app_arg_2};
  
  assign o_0 = ski[59:28];
  
  reg [63:0] result_reg;
  always @(*) begin
    case(ski[62:60])
      3'b000 : result_reg = {4'b0000,60'b000000000000000000000000000000000000000000000000000000000000};
      3'b001 : result_reg = {4'b0001,60'b000000000000000000000000000000000000000000000000000000000000};
      3'b010 : result_reg = {4'b0010,60'b000000000000000000000000000000000000000000000000000000000000};
      3'b011 : result_reg = case_alt_0;
      default : result_reg = case_alt_1;
    endcase
  end
  assign result = result_reg;
endmodule
