// Automatically generated Verilog-2001
module Machine_ram(requests
                  ,// clock
                  system1000
                  ,// asynchronous reset: active low
                  system1000_rstn
                  ,result);
  input [95:0] requests;
  input system1000;
  input system1000_rstn;
  output [65:0] result;
  wire [63:0] x;
  wire [29:0] x_0;
  wire [63:0] x_1;
  wire [29:0] x2;
  wire [93:0] result_0;
  wire signed [63:0] wild2_app_arg;
  wire [29:0] ds;
  wire [63:0] y;
  wire signed [63:0] wild2;
  wire [94:0] result_1;
  wire [93:0] x1;
  wire signed [63:0] result_2;
  wire signed [63:0] wild_app_arg;
  wire [63:0] x_case_alt;
  wire signed [63:0] x_case_alt_0;
  wire signed [63:0] wild;
  wire [0:0] x_2;
  wire [0:0] x_3;
  wire [63:0] x_app_arg;
  wire signed [63:0] x_app_arg_0;
  wire [0:0] x_app_arg_1;
  wire signed [63:0] result_3;
  wire [63:0] result_4;
  wire [0:0] x_app_arg_2;
  wire [0:0] x_app_arg_3;
  wire [0:0] x_4;
  wire [0:0] x_5;
  assign x = requests[63:0];
  
  assign x_0 = requests[93:64];
  
  assign x_1 = x;
  
  assign x2 = x1[93:64];
  
  assign result_0 = {ds,x_1};
  
  assign wild2_app_arg = $unsigned(x2);
  
  assign ds = x_0;
  
  assign y = x1[63:0];
  
  assign wild2 = $signed(wild2_app_arg);
  
  assign result_1 = {1'b1,result_0};
  
  assign x1 = result_1[93:0];
  
  assign result_2 = wild2;
  
  assign wild_app_arg = $unsigned(ds);
  
  assign x_case_alt = y;
  
  assign x_case_alt_0 = result_2;
  
  assign wild = $signed(wild_app_arg);
  
  assign x_2 = requests[94:94];
  
  assign x_3 = requests[95:95];
  
  reg [63:0] x_app_arg_reg;
  always @(*) begin
    case(result_1[94:94])
      1'b0 : x_app_arg_reg = {64 {1'bx}};
      default : x_app_arg_reg = x_case_alt;
    endcase
  end
  assign x_app_arg = x_app_arg_reg;
  
  reg signed [63:0] x_app_arg_0_reg;
  always @(*) begin
    case(result_1[94:94])
      1'b0 : x_app_arg_0_reg = {64 {1'bx}};
      default : x_app_arg_0_reg = x_case_alt_0;
    endcase
  end
  assign x_app_arg_0 = x_app_arg_0_reg;
  
  reg [0:0] x_app_arg_1_reg;
  always @(*) begin
    case(result_1[94:94])
      1'b0 : x_app_arg_1_reg = 1'b0;
      default : x_app_arg_1_reg = 1'b1;
    endcase
  end
  assign x_app_arg_1 = x_app_arg_1_reg;
  
  assign result_3 = wild;
  
  // blockRam begin
  reg [63:0] RAM [0:80-1];
  reg [63:0] dout;
  
  reg [5119:0] ram_init;
  integer i;
  initial begin
    ram_init = ({{64'b0011000000000000000000000000000001000000000000000000000000000110,64'b0011000000000000000000000000000010000000000000000000000000000101,64'b0011000000000000000000000000000011000000000000000000000000000100,64'b0000000000000000000000000000000000000000000000000000000000000000,64'b0010000000000000000000000000000000000000000000000000000000000000,64'b0010000000000000000000000000000000000000000000000000000000000000,64'b0011000000000000000000000000000111000000000000000000000000001100,64'b0011000000000000000000000000001000000000000000000000000000001011,64'b0011000000000000000000000000001001000000000000000000000000001010,64'b0000000000000000000000000000000000000000000000000000000000000000,64'b0010000000000000000000000000000000000000000000000000000000000000,64'b0010000000000000000000000000000000000000000000000000000000000000,64'b0011000000000000000000000000001101000000000000000000000000100010,64'b0011000000000000000000000000001110000000000000000000000000100001,64'b0011000000000000000000000000001111000000000000000000000000100000,64'b0011000000000000000000000000010000000000000000000000000000011111,64'b0011000000000000000000000000010001000000000000000000000000011110,64'b0011000000000000000000000000010010000000000000000000000000011101,64'b0011000000000000000000000000010011000000000000000000000000011100,64'b0011000000000000000000000000010100000000000000000000000000011011,64'b0011000000000000000000000000010101000000000000000000000000011010,64'b0011000000000000000000000000010110000000000000000000000000011001,64'b0011000000000000000000000000010111000000000000000000000000011000,64'b0100000000000000000000000000000000000000000000000000000001101000,64'b0100000000000000000000000000000000000000000000000000000001100101,64'b0100000000000000000000000000000000000000000000000000000001101100,64'b0100000000000000000000000000000000000000000000000000000001101100,64'b0100000000000000000000000000000000000000000000000000000001101111,64'b0100000000000000000000000000000000000000000000000000000001011111,64'b0100000000000000000000000000000000000000000000000000000001110111,64'b0100000000000000000000000000000000000000000000000000000001101111,64'b0100000000000000000000000000000000000000000000000000000001110010,64'b0100000000000000000000000000000000000000000000000000000001101100,64'b0100000000000000000000000000000000000000000000000000000001100100,64'b0100000000000000000000000000000000000000000000000000000000100001},({45 {64'b0000000000000000000000000000000000000000000000000000000000000000}})});
    for (i=0; i < 80; i = i + 1) begin
      RAM[80-1-i] = ram_init[i*64+:64];
    end
  end
  
  always @(posedge system1000) begin : Machine_ram_blockRam
    if (x_app_arg_1) begin
      RAM[x_app_arg_0] <= x_app_arg;
    end
    dout <= RAM[result_3];
  end
  
  assign result_4 = dout;
  // blockRam end
  
  assign x_app_arg_2 = x_2;
  
  assign x_app_arg_3 = x_3;
  
  // register begin
  reg [0:0] dout_0;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_ram_register
    if (~ system1000_rstn) begin
      dout_0 <= 1'b0;
    end else begin
      dout_0 <= x_app_arg_2;
    end
  end
  
  assign x_4 = dout_0;
  // register end
  
  // register begin
  reg [0:0] dout_1;
  
  always @(posedge system1000 or negedge system1000_rstn) begin : Machine_ram_register_0
    if (~ system1000_rstn) begin
      dout_1 <= 1'b0;
    end else begin
      dout_1 <= x_app_arg_3;
    end
  end
  
  assign x_5 = dout_1;
  // register end
  
  assign result = {x_5
                  ,x_4
                  ,result_4};
endmodule
