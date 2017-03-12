// Automatically generated SystemVerilog-2005
module FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus(a
                                                              ,b
                                                              ,result);
  input logic signed [15:0] a;
  input logic signed [15:0] b;
  output logic signed [15:0] result;
  logic [15:0] app_arg;
  logic [15:0] app_arg_0;
  logic [0:0] app_arg_1;
  logic [0:0] app_arg_2;
  logic signed [16:0] r;
  logic [15:0] r_0;
  logic [0:0] case_scrut;
  logic [0:0] app_arg_3;
  logic [0:0] app_arg_4;
  logic signed [15:0] case_alt;
  logic signed [15:0] case_alt_0;
  logic [0:0] case_scrut_0;
  logic [16:0] app_arg_5;
  logic signed [15:0] case_alt_1;
  FIR_types::Tup2_0 case_scrut_1;
  assign app_arg = b;
  
  assign app_arg_0 = a;
  
  // msb begin
  logic [15:0] bv;
  assign bv = app_arg;
  assign app_arg_1 = bv[16-1];
  // msb end
  
  // msb begin
  logic [15:0] bv_0;
  assign bv_0 = app_arg_0;
  assign app_arg_2 = bv_0[16-1];
  // msb end
  
  assign r = a + b;
  
  assign r_0 = case_scrut_1.Tup2_0_sel1;
  
  assign case_scrut = app_arg_2 & app_arg_1;
  
  // msb begin
  logic [15:0] bv_1;
  assign bv_1 = r_0;
  assign app_arg_3 = bv_1[16-1];
  // msb end
  
  // msb begin
  logic [16:0] bv_2;
  assign bv_2 = app_arg_5;
  assign app_arg_4 = bv_2[17-1];
  // msb end
  
  assign case_alt = r_0;
  
  always_comb begin
    case(case_scrut)
      1'b0 : case_alt_0 = {1'b0, {(16-1) {1'b1}}};
      default : case_alt_0 = {1'b1, {(16-1) {1'b0}}};
    endcase
  end
  
  assign case_scrut_0 = app_arg_4 ^ app_arg_3;
  
  assign app_arg_5 = r;
  
  always_comb begin
    case(case_scrut_0)
      1'b0 : case_alt_1 = case_alt;
      default : case_alt_1 = case_alt_0;
    endcase
  end
  
  // split begin
  logic [16:0] bv_3;
  assign bv_3 = app_arg_5;
  assign case_scrut_1 = { bv_3[$high(bv_3) : 16]
                   , bv_3[(16-1) : 0]
                   };
  // split end
  
  assign result = case_alt_1;
endmodule
