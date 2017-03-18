// Automatically generated Verilog-2001
module Machine_anode_n(ds
                      ,result);
  input [3:0] ds;
  output [3:0] result;
  reg [3:0] result_reg;
  always @(*) begin
    case(ds)
      4'b1110 : result_reg = 4'b0000;
      4'b1101 : result_reg = 4'b0001;
      4'b1011 : result_reg = 4'b0010;
      4'b0111 : result_reg = 4'b0011;
      default : result_reg = {4 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
