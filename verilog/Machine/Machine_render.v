// Automatically generated Verilog-2001
module Machine_render(s,result);
  input [19:0] s;
  output [11:0] result;
  wire [3:0] ds4;
  wire [3:0] ds3;
  wire [3:0] ds2;
  wire [3:0] ds1;
  wire [3:0] convertOut_app_arg;
  wire [3:0] ds5;
  wire [7:0] convertOut;
  wire [3:0] ds5_0;
  wire [7:0] result_0;
  wire [7:0] app_arg;
  wire [3:0] app_arg_0;
  assign result = {app_arg_0
                  ,app_arg};
  
  assign ds4 = s[7:4];
  
  assign ds3 = s[11:8];
  
  assign ds2 = s[15:12];
  
  assign ds1 = s[19:16];
  
  reg [3:0] convertOut_app_arg_reg;
  always @(*) begin
    case(ds5)
      4'b0000 : convertOut_app_arg_reg = ds1;
      4'b0001 : convertOut_app_arg_reg = ds2;
      4'b0010 : convertOut_app_arg_reg = ds3;
      default : convertOut_app_arg_reg = ds4;
    endcase
  end
  assign convertOut_app_arg = convertOut_app_arg_reg;
  
  Machine_anode_n Machine_anode_n_ds5
  (.result (ds5),.ds (ds5_0));
  
  Machine_convert Machine_convert_convertOut
  (.result (convertOut)
  ,.ds (convertOut_app_arg));
  
  assign ds5_0 = s[3:0];
  
  reg [7:0] result_0_reg;
  always @(*) begin
    case(ds5)
      4'b0000 : result_0_reg = convertOut;
      4'b0001 : result_0_reg = convertOut;
      4'b0010 : result_0_reg = convertOut;
      4'b0011 : result_0_reg = convertOut;
      default : result_0_reg = {8 {1'bx}};
    endcase
  end
  assign result_0 = result_0_reg;
  
  assign app_arg = result_0;
  
  assign app_arg_0 = ds5_0;
endmodule
