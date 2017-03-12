// Automatically generated Verilog-2001
module FIR_fir_sfir(x_t
                   ,// clock
                   system1000
                   ,// asynchronous reset: active low
                   system1000_rstn
                   ,result);
  input signed [15:0] x_t;
  input system1000;
  input system1000_rstn;
  output signed [15:0] result;
  wire [63:0] app_arg;
  wire [63:0] vs;
  // zipWith start
  wire [63:0] vec1;
  wire [63:0] vec2;
  assign vec1 = {16'sd2,16'sd3,-16'sd2,16'sd8};
  assign vec2 = vs;
  
  genvar i;
  generate
  for (i = 0; i < 4; i = i + 1) begin : zipWith
    wire signed [15:0] zipWith_in1;
    wire signed [15:0] zipWith_in2;
    wire signed [15:0] n;
  
    assign zipWith_in1 = vec1[i*16+:16];
    assign zipWith_in2 = vec2[i*16+:16];
    FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatMult_0
  (.result (n)
  ,.a (zipWith_in1)
  ,.b (zipWith_in2));
    assign app_arg[i*16+:16] = n;
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
  wire signed [15:0] intermediate [0:(2*4)-2];
  wire [63:0] vecflat;
  assign vecflat = app_arg;
  genvar i_0;
  generate
  for (i_0=0; i_0 < 4; i_0=i_0+1) begin : mk_array
    assign intermediate[(4-1)-i_0] = vecflat[i_0*16+:16];
  end
  endgenerate
  
  // calculate the depth of the tree
  function integer log2;
    input integer value;
    begin
      value = value-1;
      for (log2=0; value>0; log2=log2+1)
        value = value>>1;
    end
  endfunction
  
  localparam levels = log2(4);
  
  // given a level and a depth, calculate the corresponding index into the
  // intermediate array
  function integer depth2Index;
    input integer levels;
    input integer depth;
  
    depth2Index = (2 ** levels) - (2 ** depth);
  endfunction
  
  // Create the tree of instantiated components
  genvar d;
  genvar i_1;
  generate
  if (levels != 0) begin : make_tree
    for (d = (levels - 1); d >= 0; d=d-1) begin : tree_depth
      for (i_1 = 0; i_1 < (2**d); i_1 = i_1+1) begin : tree_depth_loop
        wire signed [15:0] fold_in1;
        wire signed [15:0] fold_in2;
        wire signed [15:0] fold_out;
  
        assign fold_in1 = intermediate[depth2Index(levels+1,d+2)+(2*i_1)];
        assign fold_in2 = intermediate[depth2Index(levels+1,d+2)+(2*i_1)+1];
        FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus FIR_fSaturatingNumSigned_sfSaturatingNumSigned_csatPlus_1
  (.result (fold_out)
  ,.a (fold_in1)
  ,.b (fold_in2));
        assign intermediate[depth2Index(levels+1,d+1)+i_1] = fold_out;
      end
    end
  end
  endgenerate
  
  // The last element of the intermediate array holds the result
  assign result = intermediate[(2*4)-2];
  // fold end
endmodule
