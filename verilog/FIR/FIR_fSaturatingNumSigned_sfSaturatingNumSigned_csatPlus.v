// Automatically generated Verilog-2001
module FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus(a
                                                              ,b
                                                              ,result);
  input signed [15:0] a;
  input signed [15:0] b;
  output signed [15:0] result;
  wire [15:0] app_arg;
  wire [15:0] app_arg_0;
  wire [0:0] app_arg_1;
  wire [0:0] app_arg_2;
  wire signed [16:0] r;
  wire [15:0] r_0;
  wire [0:0] case_scrut;
  wire [0:0] app_arg_3;
  wire [0:0] app_arg_4;
  wire signed [15:0] case_alt;
  wire signed [15:0] case_alt_0;
  wire [0:0] case_scrut_0;
  wire [16:0] app_arg_5;
  wire signed [15:0] case_alt_1;
  wire [16:0] case_scrut_1;
  assign app_arg = b;
  
  assign app_arg_0 = a;
  
  // msb begin
  wire [15:0] bv;
  assign bv = app_arg;
  assign app_arg_1 = bv[16-1];
  // msb end
  
  // msb begin
  wire [15:0] bv_0;
  assign bv_0 = app_arg_0;
  assign app_arg_2 = bv_0[16-1];
  // msb end
  
  assign r = a + b;
  
  assign r_0 = case_scrut_1[15:0];
  
  assign case_scrut = app_arg_2 & app_arg_1;
  
  // msb begin
  wire [15:0] bv_1;
  assign bv_1 = r_0;
  assign app_arg_3 = bv_1[16-1];
  // msb end
  
  // msb begin
  wire [16:0] bv_2;
  assign bv_2 = app_arg_5;
  assign app_arg_4 = bv_2[17-1];
  // msb end
  
  assign case_alt = r_0;
  
  reg signed [15:0] case_alt_0_reg;
  always @(*) begin
    case(case_scrut)
      1'b0 : case_alt_0_reg = {1'b0, {(16-1) {1'b1}}};
      default : case_alt_0_reg = {1'b1, {(16-1) {1'b0}}};
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign case_scrut_0 = app_arg_4 ^ app_arg_3;
  
  assign app_arg_5 = r;
  
  reg signed [15:0] case_alt_1_reg;
  always @(*) begin
    case(case_scrut_0)
      1'b0 : case_alt_1_reg = case_alt;
      default : case_alt_1_reg = case_alt_0;
    endcase
  end
  assign case_alt_1 = case_alt_1_reg;
  
  assign case_scrut_1 = app_arg_5;
  
  assign result = case_alt_1;
endmodule
