// Automatically generated Verilog-2001
module Machine_addressSelector(prevAddr
                              ,btn
                              ,result);
  input [7:0] prevAddr;
  input [3:0] btn;
  output [7:0] result;
  wire [7:0] case_alt;
  wire [7:0] case_alt_0;
  wire [0:0] case_scrut;
  wire [7:0] case_alt_1;
  wire [7:0] case_alt_2;
  wire [0:0] case_scrut_0;
  wire [0:0] app_arg;
  wire [0:0] app_arg_0;
  reg [7:0] result_reg;
  always @(*) begin
    if(case_scrut)
      result_reg = case_alt;
    else
      result_reg = case_alt_0;
  end
  assign result = result_reg;
  
  reg [7:0] case_alt_reg;
  always @(*) begin
    if(case_scrut_0)
      case_alt_reg = prevAddr;
    else
      case_alt_reg = case_alt_1;
  end
  assign case_alt = case_alt_reg;
  
  reg [7:0] case_alt_0_reg;
  always @(*) begin
    if(case_scrut_0)
      case_alt_0_reg = case_alt_2;
    else
      case_alt_0_reg = prevAddr;
  end
  assign case_alt_0 = case_alt_0_reg;
  
  assign case_scrut = app_arg_0 == (1'b1);
  
  assign case_alt_1 = prevAddr - 8'b00000001;
  
  assign case_alt_2 = prevAddr + 8'b00000001;
  
  assign case_scrut_0 = app_arg == (1'b1);
  
  // indexBit begin
  wire [3:0] bv;
  assign bv = btn;
  
  assign app_arg = bv[(64'sd2)];
  // indexBit end
  
  // indexBit begin
  wire [3:0] bv_0;
  assign bv_0 = btn;
  
  assign app_arg_0 = bv_0[(64'sd3)];
  // indexBit end
endmodule
