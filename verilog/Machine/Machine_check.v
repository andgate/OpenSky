// Automatically generated Verilog-2001
module Machine_check(ds,result);
  input [319:0] ds;
  output [128:0] result;
  wire [128:0] case_alt;
  wire [128:0] case_alt_0;
  wire [94:0] w1;
  wire [128:0] case_alt_1;
  wire [94:0] w2;
  wire [128:0] case_alt_2;
  wire [128:0] case_alt_3;
  wire [64:0] r1;
  wire [128:0] case_alt_4;
  wire [128:0] case_alt_5;
  wire [64:0] r2;
  wire [127:0] app_arg;
  wire [127:0] app_arg_0;
  wire [127:0] app_arg_1;
  wire [127:0] app_arg_2;
  wire [62:0] v2;
  wire [62:0] v1;
  reg [128:0] case_alt_reg;
  always @(*) begin
    case(w1[94:93])
      2'b01 : case_alt_reg = {1'b0,128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
      default : case_alt_reg = case_alt_0;
    endcase
  end
  assign case_alt = case_alt_reg;
  
  reg [128:0] case_alt_0_reg;
  always @(*) begin
    case(w2[94:93])
      2'b01 : case_alt_0_reg = {1'b0,128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
      default : case_alt_0_reg = case_alt_1;
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign w1 = ds[189:95];
  
  reg [128:0] case_alt_1_reg;
  always @(*) begin
    case(r1[64:63])
      2'b00 : case_alt_1_reg = case_alt_2;
      2'b01 : case_alt_1_reg = {1'b0,128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
      default : case_alt_1_reg = case_alt_3;
    endcase
  end
  assign case_alt_1 = case_alt_1_reg;
  
  assign w2 = ds[94:0];
  
  reg [128:0] case_alt_2_reg;
  always @(*) begin
    case(r2[64:63])
      2'b00 : case_alt_2_reg = {1'b1,{2'b00,126'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      default : case_alt_2_reg = {1'b0,128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign case_alt_2 = case_alt_2_reg;
  
  reg [128:0] case_alt_3_reg;
  always @(*) begin
    case(r2[64:63])
      2'b00 : case_alt_3_reg = case_alt_4;
      2'b01 : case_alt_3_reg = {1'b0,128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
      default : case_alt_3_reg = case_alt_5;
    endcase
  end
  assign case_alt_3 = case_alt_3_reg;
  
  assign r1 = ds[319:255];
  
  assign case_alt_4 = {1'b1,app_arg};
  
  assign case_alt_5 = {1'b1,app_arg_0};
  
  assign r2 = ds[254:190];
  
  assign app_arg = app_arg_1;
  
  assign app_arg_0 = app_arg_2;
  
  assign app_arg_1 = {2'b01,v1,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_2 = {2'b10,v1,v2};
  
  assign v2 = r2[62:0];
  
  assign v1 = r1[62:0];
  
  assign result = case_alt;
endmodule
