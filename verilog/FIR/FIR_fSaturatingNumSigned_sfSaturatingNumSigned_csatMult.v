// Automatically generated Verilog-2001
module FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult(a
                                                              ,b
                                                              ,result);
  input signed [15:0] a;
  input signed [15:0] b;
  output signed [15:0] result;
  wire [15:0] ww2;
  wire [15:0] ww1;
  wire signed [15:0] case_alt;
  wire [31:0] case_scrut;
  wire signed [15:0] case_alt_0;
  wire signed [15:0] case_alt_1;
  wire [0:0] case_scrut_0;
  wire [0:0] case_scrut_1;
  wire [0:0] app_arg;
  wire [0:0] app_arg_0;
  wire [0:0] app_arg_1;
  wire [16:0] app_arg_2;
  wire [0:0] app_arg_3;
  wire [31:0] app_arg_4;
  wire signed [31:0] app_arg_5;
  assign result = case_alt;
  
  assign ww2 = case_scrut[15:0];
  
  assign ww1 = case_scrut[31:16];
  
  reg signed [15:0] case_alt_reg;
  always @(*) begin
    case(case_scrut_0)
      1'b1 : case_alt_reg = case_alt_0;
      default : case_alt_reg = case_alt_1;
    endcase
  end
  assign case_alt = case_alt_reg;
  
  assign case_scrut = app_arg_4;
  
  assign case_alt_0 = ww2;
  
  reg signed [15:0] case_alt_1_reg;
  always @(*) begin
    case(case_scrut_1)
      1'b0 : case_alt_1_reg = {1'b0, {(16-1) {1'b1}}};
      default : case_alt_1_reg = {1'b1, {(16-1) {1'b0}}};
    endcase
  end
  assign case_alt_1 = case_alt_1_reg;
  
  assign case_scrut_0 = app_arg_0 | app_arg;
  
  // msb begin
  wire [15:0] bv;
  assign bv = ww1;
  assign case_scrut_1 = bv[16-1];
  // msb end
  
  assign app_arg = & (app_arg_2);
  
  assign app_arg_0 = ~ app_arg_1;
  
  assign app_arg_1 = | (app_arg_2);
  
  assign app_arg_2 = {app_arg_3,ww1};
  
  // msb begin
  wire [15:0] bv_0;
  assign bv_0 = ww2;
  assign app_arg_3 = bv_0[16-1];
  // msb end
  
  assign app_arg_4 = app_arg_5;
  
  assign app_arg_5 = a * b;
endmodule
