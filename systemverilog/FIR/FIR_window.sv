// Automatically generated SystemVerilog-2005
module FIR_window(w2
                 ,// clock
                 system1000
                 ,// asynchronous reset: active low
                 system1000_rstn
                 ,result);
  input logic signed [15:0] w2;
  input logic system1000;
  input logic system1000_rstn;
  output FIR_types::array_of_4_signed_16 result;
  FIR_types::array_of_3_signed_16 result_0;
  FIR_types::array_of_3_signed_16 x;
  FIR_types::array_of_3_signed_16 vs;
  FIR_types::Tup2_1 vs_case_scrut;
  FIR_types::array_of_4_signed_16 vs_app_arg;
  FIR_types::array_of_3_signed_16 x_0;
  FIR_types::array_of_1_signed_16 vs_app_arg_0;
  assign result_0 = x;
  
  // register begin
  FIR_types::array_of_3_signed_16 dout;
  
  always_ff @(posedge system1000 or negedge system1000_rstn) begin : FIR_window_register
    if (~ system1000_rstn) begin
      dout <= ('{3 {16'sd0}});
    end else begin
      dout <= vs;
    end
  end
  
  assign x = dout;
  // register end
  
  assign vs = x_0;
  
  // splitAt begin
  logic [0:4-1] [0:16-1] vec;
  assign vec = FIR_types::array_of_4_signed_16_to_lv(vs_app_arg);
  
  assign vs_case_scrut = {vec[0:3-1]
                   ,vec[3:4-1]
                   };
  // splitAt end
  
  assign vs_app_arg = FIR_types::array_of_4_signed_16_from_lv({FIR_types::array_of_1_signed_16_to_lv(vs_app_arg_0),FIR_types::array_of_3_signed_16_to_lv(result_0)});
  
  assign x_0 = FIR_types::array_of_3_signed_16_from_lv(vs_case_scrut.Tup2_1_sel0);
  
  assign vs_app_arg_0 = '{w2};
  
  assign result = FIR_types::array_of_4_signed_16_cons(w2, result_0);
endmodule
