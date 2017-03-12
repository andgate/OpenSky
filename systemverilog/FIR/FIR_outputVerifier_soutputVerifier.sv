// Automatically generated SystemVerilog-2005
module FIR_outputVerifier_soutputVerifier(i
                                         ,// clock
                                         system1000
                                         ,// asynchronous reset: active low
                                         system1000_rstn
                                         ,result);
  input logic signed [15:0] i;
  input logic system1000;
  input logic system1000_rstn;
  output logic [0:0] result;
  logic signed [15:0] app_arg;
  logic [0:0] app_arg_0;
  logic [0:0] app_arg_1;
  logic signed [15:0] x;
  FIR_types::Tup2_3 result_0;
  logic [0:0] y;
  FIR_types::Tup2_3 y_0;
  FIR_types::Tup2_4 result_1;
  logic [1:0] tup_app_arg;
  FIR_types::Tup2_3 tup_app_arg_0;
  logic [0:0] tup_case_scrut;
  logic [1:0] tup_case_alt;
  logic signed [15:0] result_2;
  logic [0:0] tup_app_arg_1;
  logic [1:0] x_0;
  logic signed [63:0] tup_app_arg_2;
  logic [1:0] x_app_arg;
  logic signed [63:0] wild;
  logic signed [63:0] wild_app_arg;
  logic [1:0] x_1;
  logic signed [63:0] tup_case_scrut_app_arg;
  logic signed [63:0] tup_app_arg_1_app_arg;
  // assert begin
  // pragma translate_off
  always @(posedge system1000 or posedge system1000_rstn) begin
    if (i !== app_arg) begin
      $display("@%0tns: %s, expected: %b, actual: %b", $time, ("outputVerifier"), app_arg, i);
      $stop;
    end
  end
  // pragma translate_on
  assign result = app_arg_0;
  // assert end
  
  assign app_arg = x;
  
  // register begin
  logic [0:0] dout;
  
  always_ff @(posedge system1000 or negedge system1000_rstn) begin : FIR_outputVerifier_soutputVerifier_register
    if (~ system1000_rstn) begin
      dout <= 1'b0;
    end else begin
      dout <= app_arg_1;
    end
  end
  
  assign app_arg_0 = dout;
  // register end
  
  assign app_arg_1 = y;
  
  assign x = $signed(result_0.Tup2_3_sel0);
  
  assign result_0 = y_0;
  
  assign y = result_0.Tup2_3_sel1;
  
  assign y_0 = result_1.Tup2_4_sel1;
  
  assign result_1 = {tup_app_arg
                    ,tup_app_arg_0};
  
  always_comb begin
    if(tup_case_scrut)
      tup_app_arg = tup_case_alt;
    else
      tup_app_arg = x_0;
  end
  
  assign tup_app_arg_0 = {result_2
                         ,tup_app_arg_1};
  
  assign tup_case_scrut_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_case_scrut = x_0 < ($unsigned(tup_case_scrut_app_arg));
  
  assign tup_case_alt = x_0 + 2'd1;
  
  // indexVec begin
  FIR_types::array_of_4_signed_16 vec;
  assign vec = '{16'sd4,16'sd12,16'sd1,16'sd20};
  
  assign result_2 = $signed(vec[tup_app_arg_2]);
  // indexVec end
  
  assign tup_app_arg_1_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_app_arg_1 = x_0 == ($unsigned(tup_app_arg_1_app_arg));
  
  // register begin
  logic [1:0] dout_0;
  
  always_ff @(posedge system1000 or negedge system1000_rstn) begin : FIR_outputVerifier_soutputVerifier_register_0
    if (~ system1000_rstn) begin
      dout_0 <= 2'd0;
    end else begin
      dout_0 <= x_app_arg;
    end
  end
  
  assign x_0 = dout_0;
  // register end
  
  assign tup_app_arg_2 = wild;
  
  assign x_app_arg = x_1;
  
  assign wild = $signed(wild_app_arg);
  
  assign wild_app_arg = $unsigned(x_0);
  
  assign x_1 = result_1.Tup2_4_sel0;
endmodule
