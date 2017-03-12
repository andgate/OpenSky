// Automatically generated SystemVerilog-2005
module FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult(a
                                                              ,b
                                                              ,result);
  input logic signed [15:0] a;
  input logic signed [15:0] b;
  output logic signed [15:0] result;
  logic [15:0] ww2;
  logic [15:0] ww1;
  logic signed [15:0] case_alt;
  FIR_types::Tup2 case_scrut;
  logic signed [15:0] case_alt_0;
  logic signed [15:0] case_alt_1;
  logic [0:0] case_scrut_0;
  logic [0:0] case_scrut_1;
  logic [0:0] app_arg;
  logic [0:0] app_arg_0;
  logic [0:0] app_arg_1;
  logic [16:0] app_arg_2;
  logic [0:0] app_arg_3;
  logic [31:0] app_arg_4;
  logic signed [31:0] app_arg_5;
  assign result = case_alt;
  
  assign ww2 = case_scrut.Tup2_sel1;
  
  assign ww1 = case_scrut.Tup2_sel0;
  
  always_comb begin
    case(case_scrut_0)
      1'b1 : case_alt = case_alt_0;
      default : case_alt = case_alt_1;
    endcase
  end
  
  // split begin
  logic [31:0] bv;
  assign bv = app_arg_4;
  assign case_scrut = { bv[$high(bv) : 16]
                   , bv[(16-1) : 0]
                   };
  // split end
  
  assign case_alt_0 = ww2;
  
  always_comb begin
    case(case_scrut_1)
      1'b0 : case_alt_1 = {1'b0, {(16-1) {1'b1}}};
      default : case_alt_1 = {1'b1, {(16-1) {1'b0}}};
    endcase
  end
  
  assign case_scrut_0 = app_arg_0 | app_arg;
  
  // msb begin
  logic [15:0] bv_0;
  assign bv_0 = ww1;
  assign case_scrut_1 = bv_0[16-1];
  // msb end
  
  assign app_arg = & (app_arg_2);
  
  assign app_arg_0 = ~ app_arg_1;
  
  assign app_arg_1 = | (app_arg_2);
  
  assign app_arg_2 = {app_arg_3,ww1};
  
  // msb begin
  logic [15:0] bv_1;
  assign bv_1 = ww2;
  assign app_arg_3 = bv_1[16-1];
  // msb end
  
  assign app_arg_4 = app_arg_5;
  
  assign app_arg_5 = a * b;
endmodule
