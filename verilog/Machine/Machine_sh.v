// Automatically generated Verilog-2001
module Machine_sh(ds,result);
  input [1:0] ds;
  output signed [63:0] result;
  reg signed [63:0] result_reg;
  always @(*) begin
    case(ds)
      2'b00 : result_reg = 64'sd0;
      2'b01 : result_reg = 64'sd4;
      2'b10 : result_reg = 64'sd8;
      2'b11 : result_reg = 64'sd12;
      default : result_reg = {64 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
