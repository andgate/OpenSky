// Automatically generated Verilog-2001
module Machine_step2(ds
                    ,ds1
                    ,result);
  input [345:0] ds;
  input [127:0] ds1;
  output [345:0] result;
  wire [345:0] case_alt;
  wire [345:0] case_alt_0;
  wire [345:0] case_alt_1;
  wire [345:0] case_alt_2;
  wire [250:0] ds2;
  wire [345:0] case_alt_3;
  wire [127:0] ds2_0;
  wire [345:0] case_alt_4;
  wire [345:0] case_alt_5;
  wire [345:0] case_alt_6;
  wire [345:0] case_alt_7;
  wire [190:0] ds3;
  wire [62:0] ski;
  wire [345:0] case_alt_8;
  wire [345:0] case_alt_9;
  wire [345:0] case_alt_10;
  wire [345:0] case_alt_11;
  wire [345:0] case_alt_12;
  wire [345:0] case_alt_13;
  wire [29:0] ds4;
  wire [345:0] case_alt_14;
  wire [345:0] case_alt_15;
  wire [345:0] case_alt_16;
  wire [345:0] result_0;
  wire [345:0] case_alt_17;
  wire [345:0] case_alt_18;
  wire [345:0] case_alt_19;
  wire [345:0] case_alt_20;
  wire [345:0] case_alt_21;
  wire [345:0] case_alt_22;
  wire [345:0] case_alt_23;
  wire [345:0] case_alt_24;
  wire [345:0] case_alt_25;
  wire [345:0] case_alt_26;
  wire [345:0] case_alt_27;
  wire [345:0] case_alt_28;
  wire [345:0] result_1;
  wire [345:0] case_alt_29;
  wire [345:0] case_alt_30;
  wire [345:0] case_alt_31;
  wire [345:0] case_alt_32;
  wire [345:0] case_alt_33;
  wire [345:0] case_alt_34;
  wire [345:0] case_alt_35;
  wire [62:0] current1;
  wire [345:0] case_alt_36;
  wire [250:0] app_arg;
  wire [345:0] case_alt_37;
  wire [345:0] case_alt_38;
  wire [250:0] app_arg_0;
  wire [345:0] result_2;
  wire [345:0] case_alt_39;
  wire [345:0] case_alt_40;
  wire [345:0] case_alt_41;
  wire [250:0] app_arg_1;
  wire [250:0] app_arg_2;
  wire [345:0] case_alt_42;
  wire [250:0] app_arg_3;
  wire [345:0] result_3;
  wire [345:0] case_alt_43;
  wire [345:0] case_alt_44;
  wire [345:0] case_alt_45;
  wire [62:0] x;
  wire [62:0] x_0;
  wire [62:0] x_1;
  wire [29:0] heap1;
  wire [250:0] app_arg_4;
  wire [62:0] a;
  wire [250:0] app_arg_5;
  wire [190:0] app_arg_6;
  wire [250:0] app_arg_7;
  wire [250:0] app_arg_8;
  wire [250:0] app_arg_9;
  wire [250:0] app_arg_10;
  wire [250:0] app_arg_11;
  wire [190:0] app_arg_12;
  wire [190:0] app_arg_13;
  wire [190:0] app_arg_14;
  wire [250:0] app_arg_15;
  wire [250:0] app_arg_16;
  wire [29:0] app_arg_17;
  wire [250:0] app_arg_18;
  wire [250:0] app_arg_19;
  wire [250:0] app_arg_20;
  wire [29:0] base1;
  wire [190:0] app_arg_21;
  wire [190:0] app_arg_22;
  wire [190:0] app_arg_23;
  wire [29:0] app_arg_24;
  wire [190:0] app_arg_25;
  wire [29:0] app_arg_26;
  wire [29:0] app_arg_27;
  wire [29:0] app_arg_28;
  wire [29:0] app_arg_29;
  wire [29:0] dec;
  wire [190:0] app_arg_30;
  wire [29:0] app_arg_31;
  wire [190:0] app_arg_32;
  wire [190:0] app_arg_33;
  wire [190:0] app_arg_34;
  wire [62:0] y;
  wire [62:0] y_0;
  wire [62:0] z;
  wire [62:0] b;
  wire [62:0] app_arg_35;
  wire [29:0] z_0;
  wire [29:0] y_1;
  wire [29:0] ds1_0;
  assign case_alt = case_alt_1;
  
  assign case_alt_0 = case_alt_2;
  
  reg [345:0] case_alt_1_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_1_reg = case_alt_3;
      default : case_alt_1_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_1 = case_alt_1_reg;
  
  reg [345:0] case_alt_2_reg;
  always @(*) begin
    case(ds3[190:189])
      2'b00 : case_alt_2_reg = case_alt_4;
      2'b01 : case_alt_2_reg = case_alt_5;
      2'b10 : case_alt_2_reg = case_alt_6;
      default : case_alt_2_reg = case_alt_7;
    endcase
  end
  assign case_alt_2 = case_alt_2_reg;
  
  assign ds2 = ds[343:93];
  
  assign case_alt_3 = {2'b01,{{2'b00,189'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                             ,30'd256
                             ,30'd0},30'd1279,ski};
  
  assign ds2_0 = ds1;
  
  reg [345:0] case_alt_4_reg;
  always @(*) begin
    case(ds4)
      30'd0 : case_alt_4_reg = case_alt_8;
      default : case_alt_4_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_4 = case_alt_4_reg;
  
  reg [345:0] case_alt_5_reg;
  always @(*) begin
    case(ds4)
      30'd0 : case_alt_5_reg = case_alt_9;
      default : case_alt_5_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_5 = case_alt_5_reg;
  
  reg [345:0] case_alt_6_reg;
  always @(*) begin
    case(ds4)
      30'd0 : case_alt_6_reg = case_alt_10;
      default : case_alt_6_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_6 = case_alt_6_reg;
  
  reg [345:0] case_alt_7_reg;
  always @(*) begin
    case(ds4)
      30'd0 : case_alt_7_reg = case_alt_12;
      30'd1 : case_alt_7_reg = case_alt_13;
      default : case_alt_7_reg = case_alt_11;
    endcase
  end
  assign case_alt_7 = case_alt_7_reg;
  
  assign ds3 = ds2[250:60];
  
  assign ski = ds2_0[125:63];
  
  assign case_alt_8 = case_alt_14;
  
  assign case_alt_9 = case_alt_15;
  
  assign case_alt_10 = case_alt_16;
  
  assign case_alt_11 = result_0;
  
  assign case_alt_12 = case_alt_17;
  
  assign case_alt_13 = case_alt_18;
  
  assign ds4 = ds2[29:0];
  
  reg [345:0] case_alt_14_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_14_reg = {346 {1'bx}};
      3'b001 : case_alt_14_reg = {346 {1'bx}};
      3'b010 : case_alt_14_reg = {346 {1'bx}};
      3'b011 : case_alt_14_reg = case_alt_19;
      default : case_alt_14_reg = {2'b10,344'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign case_alt_14 = case_alt_14_reg;
  
  reg [345:0] case_alt_15_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_15_reg = {346 {1'bx}};
      3'b001 : case_alt_15_reg = {346 {1'bx}};
      3'b010 : case_alt_15_reg = case_alt_21;
      3'b011 : case_alt_15_reg = case_alt_20;
      default : case_alt_15_reg = case_alt_21;
    endcase
  end
  assign case_alt_15 = case_alt_15_reg;
  
  reg [345:0] case_alt_16_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_16_reg = {346 {1'bx}};
      3'b001 : case_alt_16_reg = case_alt_22;
      3'b010 : case_alt_16_reg = case_alt_24;
      3'b011 : case_alt_16_reg = case_alt_23;
      default : case_alt_16_reg = case_alt_24;
    endcase
  end
  assign case_alt_16 = case_alt_16_reg;
  
  reg [345:0] result_0_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : result_0_reg = case_alt_25;
      3'b001 : result_0_reg = case_alt_26;
      3'b010 : result_0_reg = case_alt_28;
      3'b011 : result_0_reg = case_alt_27;
      default : result_0_reg = case_alt_28;
    endcase
  end
  assign result_0 = result_0_reg;
  
  reg [345:0] case_alt_17_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_17_reg = result_1;
      3'b001 : case_alt_17_reg = case_alt_29;
      3'b010 : case_alt_17_reg = case_alt_31;
      3'b011 : case_alt_17_reg = case_alt_30;
      default : case_alt_17_reg = case_alt_31;
    endcase
  end
  assign case_alt_17 = case_alt_17_reg;
  
  reg [345:0] case_alt_18_reg;
  always @(*) begin
    case(current1[62:60])
      3'b000 : case_alt_18_reg = case_alt_32;
      3'b001 : case_alt_18_reg = case_alt_33;
      3'b010 : case_alt_18_reg = case_alt_35;
      3'b011 : case_alt_18_reg = case_alt_34;
      default : case_alt_18_reg = case_alt_35;
    endcase
  end
  assign case_alt_18 = case_alt_18_reg;
  
  reg [345:0] case_alt_19_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_19_reg = case_alt_36;
      default : case_alt_19_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_19 = case_alt_19_reg;
  
  reg [345:0] case_alt_20_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_20_reg = case_alt_37;
      default : case_alt_20_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_20 = case_alt_20_reg;
  
  assign case_alt_21 = {2'b01,app_arg,heap1,x};
  
  assign case_alt_22 = {2'b01,app_arg,heap1,x_0};
  
  reg [345:0] case_alt_23_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_23_reg = case_alt_38;
      default : case_alt_23_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_23 = case_alt_23_reg;
  
  assign case_alt_24 = {2'b01,app_arg_0,heap1,x_0};
  
  reg [345:0] case_alt_25_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_25_reg = result_2;
      default : case_alt_25_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_25 = case_alt_25_reg;
  
  reg [345:0] case_alt_26_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_26_reg = case_alt_39;
      default : case_alt_26_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_26 = case_alt_26_reg;
  
  reg [345:0] case_alt_27_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_27_reg = case_alt_40;
      default : case_alt_27_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_27 = case_alt_27_reg;
  
  reg [345:0] case_alt_28_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_28_reg = case_alt_41;
      default : case_alt_28_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_28 = case_alt_28_reg;
  
  assign result_1 = {2'b01,app_arg_1,app_arg_17,x_1};
  
  assign case_alt_29 = {2'b01,app_arg_2,heap1,x_1};
  
  reg [345:0] case_alt_30_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_30_reg = case_alt_42;
      default : case_alt_30_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_30 = case_alt_30_reg;
  
  assign case_alt_31 = {2'b01,app_arg_3,heap1,x_1};
  
  reg [345:0] case_alt_32_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_32_reg = result_3;
      default : case_alt_32_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_32 = case_alt_32_reg;
  
  reg [345:0] case_alt_33_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_33_reg = case_alt_43;
      default : case_alt_33_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_33 = case_alt_33_reg;
  
  reg [345:0] case_alt_34_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b10 : case_alt_34_reg = case_alt_44;
      default : case_alt_34_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_34 = case_alt_34_reg;
  
  reg [345:0] case_alt_35_reg;
  always @(*) begin
    case(ds2_0[127:126])
      2'b01 : case_alt_35_reg = case_alt_45;
      default : case_alt_35_reg = {346 {1'bx}};
    endcase
  end
  assign case_alt_35 = case_alt_35_reg;
  
  assign current1 = ds[62:0];
  
  assign case_alt_36 = {2'b01,app_arg_4,heap1,a};
  
  assign app_arg = {{2'b00,189'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                   ,base1
                   ,30'd0};
  
  assign case_alt_37 = {2'b01,app_arg_5,heap1,a};
  
  assign case_alt_38 = {2'b01,app_arg_7,heap1,a};
  
  assign app_arg_0 = {app_arg_6
                     ,base1
                     ,30'd0};
  
  assign result_2 = {2'b01,app_arg_8,app_arg_17,x_1};
  
  assign case_alt_39 = {2'b01,app_arg_9,heap1,x_1};
  
  assign case_alt_40 = {2'b01,app_arg_10,heap1,a};
  
  assign case_alt_41 = {2'b01,app_arg_11,heap1,x_1};
  
  assign app_arg_1 = {app_arg_12
                     ,base1
                     ,30'd0};
  
  assign app_arg_2 = {app_arg_13
                     ,base1
                     ,30'd0};
  
  assign case_alt_42 = {2'b01,app_arg_15,heap1,a};
  
  assign app_arg_3 = {app_arg_14
                     ,base1
                     ,30'd0};
  
  assign result_3 = {2'b01,app_arg_16,app_arg_17,x_1};
  
  assign case_alt_43 = {2'b01,app_arg_18,heap1,x_1};
  
  assign case_alt_44 = {2'b01,app_arg_19,heap1,a};
  
  assign case_alt_45 = {2'b01,app_arg_20,heap1,x_1};
  
  assign x = ds3[188:126];
  
  assign x_0 = ds3[188:126];
  
  assign x_1 = ds3[188:126];
  
  assign heap1 = ds[92:63];
  
  assign app_arg_4 = {app_arg_21
                     ,base1
                     ,30'd0};
  
  assign a = ds2_0[125:63];
  
  assign app_arg_5 = {app_arg_22
                     ,base1
                     ,30'd0};
  
  assign app_arg_6 = {2'b01,y,126'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_7 = {app_arg_23
                     ,base1
                     ,30'd0};
  
  assign app_arg_8 = {app_arg_30
                     ,app_arg_24
                     ,dec};
  
  assign app_arg_9 = {app_arg_25
                     ,app_arg_26
                     ,app_arg_27};
  
  assign app_arg_10 = {app_arg_33
                      ,app_arg_28
                      ,app_arg_29};
  
  assign app_arg_11 = {app_arg_34
                      ,app_arg_24
                      ,dec};
  
  assign app_arg_12 = {2'b10,z,app_arg_35,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_13 = {2'b01,z,126'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_14 = {2'b10,y_0,z,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_15 = {app_arg_33
                      ,app_arg_28
                      ,30'd1};
  
  assign app_arg_16 = {app_arg_30
                      ,app_arg_24
                      ,30'd0};
  
  assign app_arg_17 = app_arg_31;
  
  assign app_arg_18 = {app_arg_32
                      ,app_arg_24
                      ,30'd0};
  
  assign app_arg_19 = {app_arg_33
                      ,app_arg_28
                      ,30'd2};
  
  assign app_arg_20 = {app_arg_34
                      ,app_arg_24
                      ,30'd0};
  
  assign base1 = ds2[59:30];
  
  assign app_arg_21 = {2'b01,b,126'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_22 = {2'b10,b,x,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_23 = {2'b11,b,x_0,y};
  
  assign app_arg_24 = base1 - 30'd1;
  
  assign app_arg_25 = {2'b11,z,a,b};
  
  assign app_arg_26 = app_arg_24 - 30'd1;
  
  assign app_arg_27 = dec - 30'd1;
  
  assign app_arg_28 = base1 + 30'd1;
  
  assign app_arg_29 = ds4 + 30'd1;
  
  assign dec = ds4 - 30'd1;
  
  assign app_arg_30 = {2'b11,z,app_arg_35,ski};
  
  assign app_arg_31 = z_0 - 30'd1;
  
  assign app_arg_32 = {2'b10,z,ski,63'b000000000000000000000000000000000000000000000000000000000000000};
  
  assign app_arg_33 = {2'b11,b,x_1,y_0};
  
  assign app_arg_34 = {2'b11,y_0,z,ski};
  
  assign y = ds3[125:63];
  
  assign y_0 = ds3[125:63];
  
  assign z = ds3[62:0];
  
  assign b = ds2_0[62:0];
  
  assign app_arg_35 = {3'b011,y_1,z_0};
  
  assign z_0 = y_1 - 30'd1;
  
  assign y_1 = ds1_0;
  
  assign ds1_0 = heap1;
  
  reg [345:0] result_reg;
  always @(*) begin
    case(ds[345:344])
      2'b00 : result_reg = case_alt;
      2'b01 : result_reg = case_alt_0;
      default : result_reg = {2'b10,344'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign result = result_reg;
endmodule
