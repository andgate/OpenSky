// Automatically generated Verilog-2001
module Machine_initiate(ds
                       ,result);
  input [249:0] ds;
  output [319:0] result;
  wire [319:0] result_0;
  wire [64:0] app_arg;
  wire [64:0] app_arg_0;
  wire [94:0] app_arg_1;
  wire [94:0] app_arg_2;
  wire [129:0] ds2;
  wire [189:0] ds1;
  wire [64:0] r1;
  wire [64:0] r2;
  wire [94:0] w1;
  wire [94:0] w2;
  wire [129:0] ds2_case_alt;
  wire [129:0] ds2_case_alt_0;
  wire [189:0] ds1_case_alt;
  wire [189:0] ds1_case_alt_0;
  wire [61:0] reads;
  wire [187:0] writes;
  wire [129:0] ds2_case_alt_1;
  wire [129:0] ds2_case_alt_2;
  wire [29:0] ds3;
  wire [29:0] ds3_0;
  wire [189:0] ds1_case_alt_1;
  wire [189:0] ds1_case_alt_2;
  wire [92:0] ds2_0;
  wire [92:0] ds2_1;
  wire [64:0] ds2_app_arg;
  wire [129:0] ds2_case_alt_3;
  wire [29:0] ds4;
  wire [94:0] ds1_app_arg;
  wire [189:0] ds1_case_alt_3;
  wire [92:0] ds3_1;
  wire [29:0] pa;
  wire [64:0] ds2_app_arg_0;
  wire [64:0] ds2_app_arg_1;
  wire [62:0] va;
  wire [29:0] pa_0;
  wire [94:0] ds1_app_arg_0;
  wire [94:0] ds1_app_arg_1;
  wire [29:0] pb;
  wire [29:0] pa_1;
  wire [62:0] vb;
  wire [29:0] pb_0;
  wire [62:0] va_0;
  wire [29:0] pa_2;
  assign result_0 = {app_arg
                    ,app_arg_0
                    ,app_arg_1
                    ,app_arg_2};
  
  assign app_arg = r1;
  
  assign app_arg_0 = r2;
  
  assign app_arg_1 = w1;
  
  assign app_arg_2 = w2;
  
  reg [129:0] ds2_reg;
  always @(*) begin
    case(reads[61:60])
      2'b00 : ds2_reg = {{2'b00,63'b000000000000000000000000000000000000000000000000000000000000000}
                        ,{2'b00,63'b000000000000000000000000000000000000000000000000000000000000000}};
      2'b01 : ds2_reg = ds2_case_alt;
      default : ds2_reg = ds2_case_alt_0;
    endcase
  end
  assign ds2 = ds2_reg;
  
  reg [189:0] ds1_reg;
  always @(*) begin
    case(writes[187:186])
      2'b00 : ds1_reg = {{2'b00,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}
                        ,{2'b00,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
      2'b01 : ds1_reg = ds1_case_alt;
      default : ds1_reg = ds1_case_alt_0;
    endcase
  end
  assign ds1 = ds1_reg;
  
  assign r1 = ds2[129:65];
  
  assign r2 = ds2[64:0];
  
  assign w1 = ds1[189:95];
  
  assign w2 = ds1[94:0];
  
  assign ds2_case_alt = ds2_case_alt_1;
  
  assign ds2_case_alt_0 = ds2_case_alt_2;
  
  assign ds1_case_alt = ds1_case_alt_1;
  
  assign ds1_case_alt_0 = ds1_case_alt_2;
  
  assign reads = ds[249:188];
  
  assign writes = ds[187:0];
  
  assign ds2_case_alt_1 = {ds2_app_arg
                          ,{2'b00,63'b000000000000000000000000000000000000000000000000000000000000000}};
  
  assign ds2_case_alt_2 = ds2_case_alt_3;
  
  assign ds3 = reads[59:30];
  
  assign ds3_0 = reads[59:30];
  
  assign ds1_case_alt_1 = {ds1_app_arg
                          ,{2'b00,93'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000}};
  
  assign ds1_case_alt_2 = ds1_case_alt_3;
  
  assign ds2_0 = writes[185:93];
  
  assign ds2_1 = writes[185:93];
  
  assign ds2_app_arg = {2'b01,pa,33'b000000000000000000000000000000000};
  
  assign ds2_case_alt_3 = {ds2_app_arg_0
                          ,ds2_app_arg_1};
  
  assign ds4 = reads[29:0];
  
  assign ds1_app_arg = {2'b01,pa_0,va};
  
  assign ds1_case_alt_3 = {ds1_app_arg_0
                          ,ds1_app_arg_1};
  
  assign ds3_1 = writes[92:0];
  
  assign pa = ds3;
  
  assign ds2_app_arg_0 = {2'b01,pa_1,33'b000000000000000000000000000000000};
  
  assign ds2_app_arg_1 = {2'b01,pb,33'b000000000000000000000000000000000};
  
  assign va = ds2_0[92:30];
  
  assign pa_0 = ds2_0[29:0];
  
  assign ds1_app_arg_0 = {2'b01,pa_2,va_0};
  
  assign ds1_app_arg_1 = {2'b01,pb_0,vb};
  
  assign pb = ds4;
  
  assign pa_1 = ds3_0;
  
  assign vb = ds3_1[92:30];
  
  assign pb_0 = ds3_1[29:0];
  
  assign va_0 = ds2_1[92:30];
  
  assign pa_2 = ds2_1[29:0];
  
  assign result = result_0;
endmodule
