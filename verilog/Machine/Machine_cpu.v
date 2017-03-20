// Automatically generated Verilog-2001
module Machine_cpu(s,i,result);
  input [7:0] s;
  input [11:0] i;
  output [32:0] result;
  wire [7:0] app_arg;
  wire [0:0] app_arg_0;
  wire [15:0] app_arg_1;
  wire [0:0] case_scrut;
  wire [16:0] case_alt;
  wire [16:0] app_arg_2;
  wire [24:0] app_arg_3;
  wire [7:0] currAddr_case_alt;
  wire [7:0] ds1;
  wire [7:0] currAddr;
  wire [32:0] result_0;
  wire [7:0] sw;
  wire [3:0] btn;
  assign app_arg = currAddr;
  
  // indexBit begin
  wire [3:0] bv;
  assign bv = btn;
  
  assign app_arg_0 = bv[(64'sd0)];
  // indexBit end
  
  assign app_arg_1 = {currAddr
                     ,sw};
  
  assign case_scrut = app_arg_0 == (1'b1);
  
  assign case_alt = {1'b1,app_arg_1};
  
  reg [16:0] app_arg_2_reg;
  always @(*) begin
    if(case_scrut)
      app_arg_2_reg = case_alt;
    else
      app_arg_2_reg = {1'b0,16'b0000000000000000};
  end
  assign app_arg_2 = app_arg_2_reg;
  
  assign app_arg_3 = {currAddr
                     ,app_arg_2};
  
  Machine_addressSelector Machine_addressSelector_currAddr_case_alt
  (.result (currAddr_case_alt)
  ,.prevAddr (ds1)
  ,.btn (btn));
  
  assign ds1 = s;
  
  assign currAddr = currAddr_case_alt;
  
  assign result_0 = {app_arg
                    ,app_arg_3};
  
  assign sw = i[11:4];
  
  assign btn = i[3:0];
  
  assign result = result_0;
endmodule
