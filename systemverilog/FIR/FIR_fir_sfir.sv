// Automatically generated SystemVerilog-2005
module FIR_fir_sfir(x_t
                   ,// clock
                   system1000
                   ,// asynchronous reset: active low
                   system1000_rstn
                   ,result);
  input logic signed [15:0] x_t;
  input logic system1000;
  input logic system1000_rstn;
  output logic signed [15:0] result;
  FIR_types::array_of_4_signed_16 app_arg;
  FIR_types::array_of_4_signed_16 vs;
  // zipWith begin
  FIR_types::array_of_4_signed_16 vec1;
  FIR_types::array_of_4_signed_16 vec2;
  assign vec1 = '{16'sd2,16'sd3,-16'sd2,16'sd8};
  assign vec2 = vs;
  
  genvar n;
  generate
    for (n = 0; n < $size(app_arg); n = n + 1) begin : zipWith
      logic signed [15:0] zipWith_in1;
      logic signed [15:0] zipWith_in2;
      logic signed [15:0] zipWith_out;
      assign zipWith_in1 = $signed(vec1[n]);
      assign zipWith_in2 = $signed(vec2[n]);
      FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult_0
  (.result (zipWith_out)
  ,.a (zipWith_in1)
  ,.b (zipWith_in2));
      assign app_arg[n] = zipWith_out;
    end
  endgenerate
  // zipWith end
  
  FIR_window FIR_window_vs
  (.result (vs)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.w2 (x_t));
  
  // fold begin
  // put flat input array into the first half of the intermediate array
  logic signed [15:0] intermediate [0:(2*4)-2];
  assign intermediate[0:4-1] = app_arg;
  
  // calculate the depth of the tree
  localparam levels = $clog2(4);
  
  // given a level and a depth, calculate the corresponding index into the
  // intermediate array
  function integer depth2Index;
    input integer levels;
    input integer depth;
  
    depth2Index = (2 ** levels) - (2 ** depth);
  endfunction
  
  // Create the tree of instantiated components
  genvar d;
  genvar i;
  generate
  if (levels != 0) begin : make_tree
    for (d = (levels - 1); d >= 0; d=d-1) begin : tree_depth
      for (i = 0; i < (2**d); i = i+1) begin : tree_depth_loop
          FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus_1
  (.result (intermediate[depth2Index(levels+1,d+1)+i])
  ,.a (intermediate[depth2Index(levels+1,d+2)+(2*i)])
  ,.b (intermediate[depth2Index(levels+1,d+2)+(2*i)+1]));
      end
    end
  end
  endgenerate
  
  // The last element of the intermediate array holds the result
  assign result = intermediate[(2*4)-2];
  // fold end
endmodule
