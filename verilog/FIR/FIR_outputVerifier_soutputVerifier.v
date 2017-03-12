// Automatically generated Verilog-2001
module FIR_outputVerifier_soutputVerifier(i
                                         ,// clock
                                         system1000
                                         ,// asynchronous reset: active low
                                         system1000_rstn
                                         ,result);
  input signed [15:0] i;
  input system1000;
  input system1000_rstn;
  output [0:0] result;
  wire signed [15:0] app_arg;
  wire [0:0] app_arg_0;
  wire [0:0] app_arg_1;
  wire signed [15:0] x;
  wire [16:0] result_0;
  wire [0:0] y;
  wire [16:0] y_0;
  wire [18:0] result_1;
  wire [1:0] tup_app_arg;
  wire [16:0] tup_app_arg_0;
  wire [0:0] tup_case_scrut;
  wire [1:0] tup_case_alt;
  wire signed [15:0] result_2;
  wire [0:0] tup_app_arg_1;
  wire [1:0] x_0;
  wire signed [63:0] tup_app_arg_2;
  wire [1:0] x_app_arg;
  wire signed [63:0] wild;
  wire signed [63:0] wild_app_arg;
  wire [1:0] x_1;
  wire signed [63:0] tup_case_scrut_app_arg;
  wire signed [63:0] tup_app_arg_1_app_arg;
  // assert begin
  // pragma translate_off
  always @(posedge system1000 or posedge system1000_rstn) begin
    if (i !== app_arg) begin
      $display("@%0tns: %s, expected: %b, actual: %b", $time, ("outputVerifier"), app_arg, i);
      $finish;
    end
  end
  // pragma translate_on
  assign result = app_arg_0;
  // assert end
  
  assign app_arg = x;
  
  // register begin
  reg [0:0] dout;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : FIR_outputVerifier_soutputVerifier_register
    if (~ system1000_rstn) begin
      dout <= 1'b0;
    end else begin
      dout <= app_arg_1;
    end
  end
  
  assign app_arg_0 = dout;
  // register end
  
  assign app_arg_1 = y;
  
  assign x = result_0[16:1];
  
  assign result_0 = y_0;
  
  assign y = result_0[0:0];
  
  assign y_0 = result_1[16:0];
  
  assign result_1 = {tup_app_arg
                    ,tup_app_arg_0};
  
  reg [1:0] tup_app_arg_reg;
  always @(*) begin
    if(tup_case_scrut)
      tup_app_arg_reg = tup_case_alt;
    else
      tup_app_arg_reg = x_0;
  end
  assign tup_app_arg = tup_app_arg_reg;
  
  assign tup_app_arg_0 = {result_2
                         ,tup_app_arg_1};
  
  assign tup_case_scrut_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_case_scrut = x_0 < ($unsigned(tup_case_scrut_app_arg));
  
  assign tup_case_alt = x_0 + 2'd1;
  
  // indexVec begin
  wire signed [15:0] vec [0:4-1];
  
  wire [63:0] vecflat;
  assign vecflat = {16'sd4,16'sd12,16'sd1,16'sd20};
  genvar i_0;
  generate
  for (i_0=0; i_0 < 4; i_0=i_0+1) begin : mk_array
    assign vec[(4-1)-i_0] = vecflat[i_0*16+:16];
  end
  endgenerate
  
  assign result_2 = vec[tup_app_arg_2];
  // indexVec end
  
  assign tup_app_arg_1_app_arg = $signed((64'sd4 - 64'sd1));
  
  assign tup_app_arg_1 = x_0 == ($unsigned(tup_app_arg_1_app_arg));
  
  // register begin
  reg [1:0] dout_0;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : FIR_outputVerifier_soutputVerifier_register_0
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
  
  assign x_1 = result_1[18:17];
endmodule
