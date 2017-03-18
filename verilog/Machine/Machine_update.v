// Automatically generated Verilog-2001
module Machine_update(sw
                     ,btn
                     ,s
                     ,result);
  input [3:0] sw;
  input [3:0] btn;
  input [19:0] s;
  output [19:0] result;
  wire [19:0] case_alt;
  wire [19:0] case_alt_0;
  wire [19:0] case_alt_1;
  wire [19:0] case_alt_2;
  wire [19:0] case_alt_3;
  wire [19:0] case_alt_4;
  wire [19:0] case_alt_5;
  wire [19:0] case_alt_6;
  wire [19:0] case_alt_7;
  wire [19:0] case_alt_8;
  wire [3:0] ds;
  wire [3:0] ds1;
  wire [3:0] ds2;
  wire [3:0] ds3;
  wire [3:0] sfBitsBitVector_crotate_swcrotateOut;
  wire [3:0] sfBitsBitVector_crotate_swcrotateOut_app_arg;
  wire [3:0] sfBitsBitVector_crotate_swcrotateOut_case_alt;
  wire [3:0] ds4;
  reg [19:0] result_reg;
  always @(*) begin
    case(btn)
      4'b1000 : result_reg = case_alt_0;
      4'b0100 : result_reg = case_alt_1;
      4'b0010 : result_reg = case_alt_2;
      4'b0001 : result_reg = case_alt_3;
      default : result_reg = case_alt;
    endcase
  end
  assign result = result_reg;
  
  assign case_alt = case_alt_4;
  
  assign case_alt_0 = case_alt_5;
  
  assign case_alt_1 = case_alt_6;
  
  assign case_alt_2 = case_alt_7;
  
  assign case_alt_3 = case_alt_8;
  
  assign case_alt_4 = {ds
                      ,ds1
                      ,ds2
                      ,ds3
                      ,sfBitsBitVector_crotate_swcrotateOut};
  
  assign case_alt_5 = {sw
                      ,ds1
                      ,ds2
                      ,ds3
                      ,sfBitsBitVector_crotate_swcrotateOut};
  
  assign case_alt_6 = {ds
                      ,sw
                      ,ds2
                      ,ds3
                      ,sfBitsBitVector_crotate_swcrotateOut};
  
  assign case_alt_7 = {ds
                      ,ds1
                      ,sw
                      ,ds3
                      ,sfBitsBitVector_crotate_swcrotateOut};
  
  assign case_alt_8 = {ds
                      ,ds1
                      ,ds2
                      ,sw
                      ,sfBitsBitVector_crotate_swcrotateOut};
  
  assign ds = s[19:16];
  
  assign ds1 = s[15:12];
  
  assign ds2 = s[11:8];
  
  assign ds3 = s[7:4];
  
  Machine_fBitsBitVector_crotate_swcrotate Machine_fBitsBitVector_crotate_swcrotate_sfBitsBitVector_crotate_swcrotateOut
  (.result (sfBitsBitVector_crotate_swcrotateOut)
  ,.pTS (sfBitsBitVector_crotate_swcrotateOut_app_arg));
  
  reg [3:0] sfBitsBitVector_crotate_swcrotateOut_app_arg_reg;
  always @(*) begin
    case(btn)
      4'b1000 : sfBitsBitVector_crotate_swcrotateOut_app_arg_reg = sfBitsBitVector_crotate_swcrotateOut_case_alt;
      4'b0100 : sfBitsBitVector_crotate_swcrotateOut_app_arg_reg = sfBitsBitVector_crotate_swcrotateOut_case_alt;
      4'b0010 : sfBitsBitVector_crotate_swcrotateOut_app_arg_reg = sfBitsBitVector_crotate_swcrotateOut_case_alt;
      4'b0001 : sfBitsBitVector_crotate_swcrotateOut_app_arg_reg = sfBitsBitVector_crotate_swcrotateOut_case_alt;
      default : sfBitsBitVector_crotate_swcrotateOut_app_arg_reg = sfBitsBitVector_crotate_swcrotateOut_case_alt;
    endcase
  end
  assign sfBitsBitVector_crotate_swcrotateOut_app_arg = sfBitsBitVector_crotate_swcrotateOut_app_arg_reg;
  
  assign sfBitsBitVector_crotate_swcrotateOut_case_alt = ds4;
  
  assign ds4 = s[3:0];
endmodule
