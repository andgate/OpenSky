// Automatically generated Verilog-2001
module Machine_topEntity(ds1
                        ,// clock
                        system1000
                        ,// asynchronous reset: active low
                        system1000_rstn
                        ,result);
  input [11:0] ds1;
  input system1000;
  input system1000_rstn;
  output [19:0] result;
  wire [7:0] x2;
  wire signed [63:0] wild3_app_arg;
  wire [16:0] y;
  wire [7:0] y_0;
  wire signed [63:0] wild3;
  wire [15:0] x1;
  wire signed [63:0] result_0;
  wire signed [63:0] wild_app_arg;
  wire [3:0] btn;
  wire [16:0] ds3;
  wire [7:0] x_case_alt;
  wire signed [63:0] x_case_alt_0;
  wire signed [63:0] wild;
  wire [11:0] tup1_app_arg;
  wire [7:0] x;
  wire [7:0] x_app_arg;
  wire signed [63:0] x_app_arg_0;
  wire [0:0] x_app_arg_1;
  wire signed [63:0] result_1;
  wire [24:0] tup1;
  wire [7:0] result_2;
  wire [7:0] ds2;
  wire [15:0] result_3;
  wire [7:0] y_1;
  wire [3:0] x_0;
  wire [11:0] tup;
  wire [7:0] sw;
  wire [7:0] app_arg;
  wire [3:0] app_arg_0;
  wire [19:0] result_4;
  assign result = result_4;
  
  assign x2 = x1[15:8];
  
  assign wild3_app_arg = $unsigned(x2);
  
  assign y = tup1[16:0];
  
  assign y_0 = x1[7:0];
  
  assign wild3 = $signed(wild3_app_arg);
  
  assign x1 = ds3[15:0];
  
  assign result_0 = wild3;
  
  assign wild_app_arg = $unsigned(ds2);
  
  assign btn = ds1[3:0];
  
  assign ds3 = y;
  
  assign x_case_alt = y_0;
  
  assign x_case_alt_0 = result_0;
  
  assign wild = $signed(wild_app_arg);
  
  assign tup1_app_arg = {sw,btn};
  
  assign x = tup1[24:17];
  
  reg [7:0] x_app_arg_reg;
  always @(*) begin
    case(ds3[16:16])
      1'b0 : x_app_arg_reg = {8 {1'bx}};
      default : x_app_arg_reg = x_case_alt;
    endcase
  end
  assign x_app_arg = x_app_arg_reg;
  
  reg signed [63:0] x_app_arg_0_reg;
  always @(*) begin
    case(ds3[16:16])
      1'b0 : x_app_arg_0_reg = {64 {1'bx}};
      default : x_app_arg_0_reg = x_case_alt_0;
    endcase
  end
  assign x_app_arg_0 = x_app_arg_0_reg;
  
  reg [0:0] x_app_arg_1_reg;
  always @(*) begin
    case(ds3[16:16])
      1'b0 : x_app_arg_1_reg = 1'b0;
      default : x_app_arg_1_reg = 1'b1;
    endcase
  end
  assign x_app_arg_1 = x_app_arg_1_reg;
  
  assign result_1 = wild;
  
  Machine_mealy_0 Machine_mealy_0_tup1
  (.result (tup1)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.w2 (tup1_app_arg));
  
  // blockRam begin
  reg [7:0] RAM [0:256-1];
  reg [7:0] dout;
  
  reg [2047:0] ram_init;
  integer i;
  initial begin
    ram_init = ({256 {8'b00000000}});
    for (i=0; i < 256; i = i + 1) begin
      RAM[256-1-i] = ram_init[i*8+:8];
    end
  end
  
  always @(posedge system1000) begin : Machine_topEntity_blockRam
    if (x_app_arg_1) begin
      RAM[x_app_arg_0] <= x_app_arg;
    end
    dout <= RAM[result_1];
  end
  
  assign result_2 = dout;
  // blockRam end
  
  assign ds2 = x;
  
  assign result_3 = {ds2,result_2};
  
  assign y_1 = tup[7:0];
  
  assign x_0 = tup[11:8];
  
  Machine_mealy Machine_mealy_tup
  (.result (tup)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.w2 (result_3));
  
  assign sw = ds1[11:4];
  
  assign app_arg = y_1;
  
  assign app_arg_0 = x_0;
  
  assign result_4 = {app_arg_0
                    ,app_arg
                    ,sw};
endmodule
