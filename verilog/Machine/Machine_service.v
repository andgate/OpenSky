// Automatically generated Verilog-2001
module Machine_service(pending
                      ,ds
                      ,result);
  input [319:0] pending;
  input [64:0] ds;
  output [319:0] result;
  wire [319:0] case_alt;
  wire [62:0] ski;
  wire [319:0] case_alt_0;
  wire [319:0] case_alt_1;
  wire [319:0] case_alt_2;
  wire [94:0] p;
  wire [94:0] o;
  wire [64:0] n;
  wire [319:0] case_alt_3;
  wire [64:0] app_arg;
  wire [319:0] case_alt_4;
  wire [64:0] ds1;
  wire [319:0] case_alt_5;
  wire [319:0] case_alt_6;
  wire [319:0] case_alt_7;
  wire [319:0] case_alt_8;
  wire [319:0] case_alt_9;
  wire [319:0] case_alt_10;
  reg [319:0] result_reg;
  always @(*) begin
    case(ds[64:63])
      2'b00 : result_reg = pending;
      2'b01 : result_reg = case_alt_10;
      default : result_reg = case_alt_9;
    endcase
  end
  assign result = result_reg;
  
  assign case_alt = {ds1
                    ,n
                    ,{2'b10,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                    ,{2'b10,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign ski = ds[62:0];
  
  reg [319:0] case_alt_0_reg;
  always @(*) begin
    case(p[94:93])
      2'b01 : case_alt_0_reg = case_alt;
      default : case_alt_0_reg = {320 {1'bx}};
    endcase
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign case_alt_1 = {ds1
                      ,n
                      ,{2'b10,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                      ,p};
  
  reg [319:0] case_alt_2_reg;
  always @(*) begin
    case(o[94:93])
      2'b00 : case_alt_2_reg = {320 {1'bx}};
      2'b01 : case_alt_2_reg = case_alt_1;
      default : case_alt_2_reg = case_alt_0;
    endcase
  end
  assign case_alt_2 = case_alt_2_reg;
  
  assign p = pending[94:0];
  
  assign o = pending[189:95];
  
  assign n = pending[254:190];
  
  assign case_alt_3 = {ds1
                      ,app_arg
                      ,o
                      ,p};
  
  assign app_arg = {2'b10,ski};
  
  reg [319:0] case_alt_4_reg;
  always @(*) begin
    case(n[64:63])
      2'b01 : case_alt_4_reg = {320 {1'bx}};
      default : case_alt_4_reg = case_alt_2;
    endcase
  end
  assign case_alt_4 = case_alt_4_reg;
  
  assign ds1 = pending[319:255];
  
  reg [319:0] case_alt_5_reg;
  always @(*) begin
    case(n[64:63])
      2'b01 : case_alt_5_reg = case_alt_3;
      default : case_alt_5_reg = {320 {1'bx}};
    endcase
  end
  assign case_alt_5 = case_alt_5_reg;
  
  assign case_alt_6 = {app_arg
                      ,n
                      ,o
                      ,p};
  
  reg [319:0] case_alt_7_reg;
  always @(*) begin
    case(ds1[64:63])
      2'b01 : case_alt_7_reg = {320 {1'bx}};
      default : case_alt_7_reg = case_alt_4;
    endcase
  end
  assign case_alt_7 = case_alt_7_reg;
  
  reg [319:0] case_alt_8_reg;
  always @(*) begin
    case(ds1[64:63])
      2'b00 : case_alt_8_reg = {320 {1'bx}};
      2'b01 : case_alt_8_reg = case_alt_6;
      default : case_alt_8_reg = case_alt_5;
    endcase
  end
  assign case_alt_8 = case_alt_8_reg;
  
  assign case_alt_9 = case_alt_7;
  
  assign case_alt_10 = case_alt_8;
endmodule
