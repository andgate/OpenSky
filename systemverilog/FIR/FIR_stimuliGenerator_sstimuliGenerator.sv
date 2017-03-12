// Automatically generated SystemVerilog-2005
module FIR_stimuliGenerator_sstimuliGenerator(// clock
                                             system1000
                                             ,// asynchronous reset: active low
                                             system1000_rstn
                                             ,result);
  input logic system1000;
  input logic system1000_rstn;
  output logic signed [15:0] result;
  logic signed [15:0] y;
  FIR_types::Tup2_2 result_0;
  logic [1:0] tup_app_arg;
  logic signed [15:0] result_1;
  logic [0:0] tup_case_scrut;
  logic [1:0] tup_case_alt;
  logic signed [63:0] tup_app_arg_0;
  logic [1:0] x;
  logic signed [63:0] wild;
  logic [1:0] x_app_arg;
  logic signed [63:0] wild_app_arg;
  logic [1:0] x_0;
  logic signed [63:0] tup_case_scrut_app_arg;
  assign result = y;
  
  assign y = $signed(result_0.Tup2_2_sel1);
  
  assign result_0 = {tup_app_arg
                    ,result_1};
  
  always_comb begin
    if(tup_case_scrut)
      tup_app_arg = tup_case_alt;
    else
      tup_app_arg = x;
  end
  
  // indexVec begin
  FIR_types::array_of_4_signed_16 vec;
  assign vec = '{16'sd2,16'sd3,-16'sd2,16'sd8};
  
  assign result_1 = $signed(vec[tup_app_arg_0]);
  // indexVec end
  
  assign tup_case_scrut_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_case_scrut = x < ($unsigned(tup_case_scrut_app_arg));
  
  assign tup_case_alt = x + 2'd1;
  
  assign tup_app_arg_0 = wild;
  
  // register begin
  logic [1:0] dout;
  
  always_ff @(posedge system1000 or negedge system1000_rstn) begin : FIR_stimuliGenerator_sstimuliGenerator_register
    if (~ system1000_rstn) begin
      dout <= 2'd0;
    end else begin
      dout <= x_app_arg;
    end
  end
  
  assign x = dout;
  // register end
  
  assign wild = $signed(wild_app_arg);
  
  assign x_app_arg = x_0;
  
  assign wild_app_arg = $unsigned(x);
  
  assign x_0 = result_0.Tup2_2_sel0;
endmodule
