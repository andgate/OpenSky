// Automatically generated Verilog-2001
module FIR_stimuliGenerator_sstimuliGenerator(// clock
                                             system1000
                                             ,// asynchronous reset: active low
                                             system1000_rstn
                                             ,result);
  input system1000;
  input system1000_rstn;
  output signed [15:0] result;
  wire signed [15:0] y;
  wire [17:0] result_0;
  wire [1:0] tup_app_arg;
  wire signed [15:0] result_1;
  wire [0:0] tup_case_scrut;
  wire [1:0] tup_case_alt;
  wire signed [63:0] tup_app_arg_0;
  wire [1:0] x;
  wire signed [63:0] wild;
  wire [1:0] x_app_arg;
  wire signed [63:0] wild_app_arg;
  wire [1:0] x_0;
  wire signed [63:0] tup_case_scrut_app_arg;
  assign result = y;
  
  assign y = result_0[15:0];
  
  assign result_0 = {tup_app_arg
                    ,result_1};
  
  reg [1:0] tup_app_arg_reg;
  always @(*) begin
    if(tup_case_scrut)
      tup_app_arg_reg = tup_case_alt;
    else
      tup_app_arg_reg = x;
  end
  assign tup_app_arg = tup_app_arg_reg;
  
  // indexVec begin
  wire signed [15:0] vec [0:4-1];
  
  wire [63:0] vecflat;
  assign vecflat = {16'sd2,16'sd3,-16'sd2,16'sd8};
  genvar i;
  generate
  for (i=0; i < 4; i=i+1) begin : mk_array
    assign vec[(4-1)-i] = vecflat[i*16+:16];
  end
  endgenerate
  
  assign result_1 = vec[tup_app_arg_0];
  // indexVec end
  
  assign tup_case_scrut_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_case_scrut = x < ($unsigned(tup_case_scrut_app_arg));
  
  assign tup_case_alt = x + 2'd1;
  
  assign tup_app_arg_0 = wild;
  
  // register begin
  reg [1:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : FIR_stimuliGenerator_sstimuliGenerator_register
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
  
  assign x_0 = result_0[17:16];
endmodule
