// Automatically generated Verilog-2001
module Machine_adder(sw,result);
  input [1:0] sw;
  output [1:0] result;
  reg [1:0] result_reg;
  always @(*) begin
    case(sw)
      2'b00 : result_reg = 2'b00;
      2'b01 : result_reg = 2'b01;
      2'b10 : result_reg = 2'b01;
      2'b11 : result_reg = 2'b10;
      default : result_reg = {2 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
