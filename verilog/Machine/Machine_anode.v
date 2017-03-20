// Automatically generated Verilog-2001
module Machine_anode(ds,result);
  input [1:0] ds;
  output [3:0] result;
  reg [3:0] result_reg;
  always @(*) begin
    case(ds)
      2'b00 : result_reg = 4'b0111;
      2'b01 : result_reg = 4'b1011;
      2'b10 : result_reg = 4'b1101;
      2'b11 : result_reg = 4'b1110;
      default : result_reg = {4 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
