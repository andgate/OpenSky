// Automatically generated Verilog-2001
module Machine_step1(ds,result);
  input [345:0] ds;
  output [249:0] result;
  wire [249:0] case_alt;
  wire [249:0] case_alt_0;
  wire [250:0] ds1;
  wire [249:0] case_alt_1;
  wire [249:0] case_alt_2;
  wire [249:0] case_alt_3;
  wire [249:0] case_alt_4;
  wire [190:0] ds3;
  wire [249:0] case_alt_5;
  wire [249:0] case_alt_6;
  wire [249:0] case_alt_7;
  wire [249:0] case_alt_8;
  wire [249:0] case_alt_9;
  wire [249:0] case_alt_10;
  wire [29:0] ds5;
  wire [249:0] case_alt_11;
  wire [249:0] case_alt_12;
  wire [249:0] case_alt_13;
  wire [249:0] case_alt_14;
  wire [249:0] case_alt_15;
  wire [249:0] case_alt_16;
  wire [62:0] current1;
  wire [61:0] result_0;
  wire [187:0] app_arg;
  wire [61:0] app_arg_0;
  wire [187:0] app_arg_1;
  wire [61:0] app_arg_2;
  wire [29:0] app_arg_3;
  wire [92:0] app_arg_4;
  wire [92:0] app_arg_5;
  wire [92:0] app_arg_6;
  wire [29:0] app_arg_7;
  wire [29:0] app_arg_8;
  wire [29:0] app_arg_9;
  wire [29:0] ap;
  wire [29:0] bp;
  wire [29:0] app_arg_10;
  wire [29:0] app_arg_11;
  wire [29:0] app_arg_12;
  wire [29:0] app_arg_13;
  wire [62:0] y;
  wire [62:0] z;
  wire [29:0] ds4;
  wire [29:0] case_alt_17;
  wire [29:0] ds2;
  wire [29:0] ds1_0;
  assign case_alt = case_alt_0;
  
  reg [249:0] case_alt_0_reg;
  always @(*) begin
    case(ds3[190:189])
      2'b00 : case_alt_0_reg = case_alt_1;
      2'b01 : case_alt_0_reg = case_alt_2;
      2'b10 : case_alt_0_reg = case_alt_3;
      default : case_alt_0_reg = case_alt_4;
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign ds1 = ds[343:93];
  
  reg [249:0] case_alt_1_reg;
  always @(*) begin
    case(ds5)
      30'd0 : case_alt_1_reg = case_alt_5;
      default : case_alt_1_reg = {250 {1'bx}};
    endcase
  end
  assign case_alt_1 = case_alt_1_reg;
  
  reg [249:0] case_alt_2_reg;
  always @(*) begin
    case(ds5)
      30'd0 : case_alt_2_reg = case_alt_6;
      default : case_alt_2_reg = {250 {1'bx}};
    endcase
  end
  assign case_alt_2 = case_alt_2_reg;
  
  reg [249:0] case_alt_3_reg;
  always @(*) begin
    case(ds5)
      30'd0 : case_alt_3_reg = case_alt_7;
      default : case_alt_3_reg = {250 {1'bx}};
    endcase
  end
  assign case_alt_3 = case_alt_3_reg;
  
  reg [249:0] case_alt_4_reg;
  always @(*) begin
    case(ds5)
      30'd0 : case_alt_4_reg = case_alt_9;
      30'd1 : case_alt_4_reg = case_alt_10;
      default : case_alt_4_reg = case_alt_8;
    endcase
  end
  assign case_alt_4 = case_alt_4_reg;
  
  assign ds3 = ds1[250:60];
  
  reg [249:0] case_alt_5_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_5_reg = {250 {1'bx}};
      3'b001 : case_alt_5_reg = {250 {1'bx}};
      3'b010 : case_alt_5_reg = {250 {1'bx}};
      3'b011 : case_alt_5_reg = case_alt_11;
      default : case_alt_5_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                 ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    endcase
  end
  assign case_alt_5 = case_alt_5_reg;
  
  reg [249:0] case_alt_6_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_6_reg = {250 {1'bx}};
      3'b001 : case_alt_6_reg = {250 {1'bx}};
      3'b010 : case_alt_6_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      3'b011 : case_alt_6_reg = case_alt_11;
      default : case_alt_6_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                 ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    endcase
  end
  assign case_alt_6 = case_alt_6_reg;
  
  reg [249:0] case_alt_7_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_7_reg = {250 {1'bx}};
      3'b001 : case_alt_7_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      3'b010 : case_alt_7_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      3'b011 : case_alt_7_reg = case_alt_11;
      default : case_alt_7_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                 ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    endcase
  end
  assign case_alt_7 = case_alt_7_reg;
  
  reg [249:0] case_alt_8_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_8_reg = case_alt_14;
      3'b001 : case_alt_8_reg = case_alt_12;
      3'b010 : case_alt_8_reg = case_alt_16;
      3'b011 : case_alt_8_reg = case_alt_15;
      default : case_alt_8_reg = case_alt_16;
    endcase
  end
  assign case_alt_8 = case_alt_8_reg;
  
  reg [249:0] case_alt_9_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_9_reg = case_alt_13;
      3'b001 : case_alt_9_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      3'b010 : case_alt_9_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      3'b011 : case_alt_9_reg = case_alt_15;
      default : case_alt_9_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                                 ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    endcase
  end
  assign case_alt_9 = case_alt_9_reg;
  
  reg [249:0] case_alt_10_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_10_reg = case_alt_14;
      3'b001 : case_alt_10_reg = case_alt_16;
      3'b010 : case_alt_10_reg = case_alt_16;
      3'b011 : case_alt_10_reg = case_alt_15;
      default : case_alt_10_reg = case_alt_16;
    endcase
  end
  assign case_alt_10 = case_alt_10_reg;
  
  assign ds5 = ds1[29:0];
  
  assign case_alt_11 = {app_arg_0
                       ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign case_alt_12 = {result_0
                       ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign case_alt_13 = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                       ,app_arg};
  
  assign case_alt_14 = {app_arg_2
                       ,app_arg};
  
  assign case_alt_15 = {app_arg_0
                       ,app_arg_1};
  
  assign case_alt_16 = {app_arg_2
                       ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign current1 = ds[62:0];
  
  assign result_0 = {2'b10,app_arg_9,app_arg_3};
  
  assign app_arg = {2'b10,app_arg_5,app_arg_6};
  
  assign app_arg_0 = {2'b10,app_arg_7,app_arg_8};
  
  assign app_arg_1 = {2'b01,app_arg_4,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_2 = {2'b01,app_arg_9,30'b000000000000000000000000000000};
  
  assign app_arg_3 = app_arg_11;
  
  assign app_arg_4 = {z,ds4};
  
  assign app_arg_5 = {y
                     ,app_arg_12};
  
  assign app_arg_6 = {z
                     ,app_arg_13};
  
  assign app_arg_7 = ap;
  
  assign app_arg_8 = bp;
  
  assign app_arg_9 = app_arg_10;
  
  assign ap = current1[59:30];
  
  assign bp = current1[29:0];
  
  assign app_arg_10 = ds4 - 30'd1;
  
  assign app_arg_11 = app_arg_10 - 30'd1;
  
  assign app_arg_12 = ds1_0;
  
  assign app_arg_13 = case_alt_17;
  
  assign y = ds3[125:63];
  
  assign z = ds3[62:0];
  
  assign ds4 = ds1[59:30];
  
  assign case_alt_17 = ds1_0 - 30'd1;
  
  assign ds2 = ds[92:63];
  
  assign ds1_0 = ds2;
  
  reg [249:0] result_reg;
  always @(*) begin
    case(ds[345:344])
      2'b00 : result_reg = {{2'b01,30'd1,30'b000000000000000000000000000000}
                           ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      2'b01 : result_reg = case_alt;
      default : result_reg = {{2'b00,60'b000000000000000000000000000000000000000000000000000000000000}
                             ,{2'b00,186'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
    endcase
  end
  assign result = result_reg;
endmodule
