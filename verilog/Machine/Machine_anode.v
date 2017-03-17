// Automatically generated Verilog-2001
module Machine_anode(ds1
                    ,result);
  input [1:0] ds1;
  output [3:0] result;
  reg [3:0] result_reg;
  always @(*) begin
    case(ds1)
      2'd0 : result_reg = 4'b1110;
      2'd1 : result_reg = 4'b1101;
      2'd2 : result_reg = 4'b1011;
      2'd3 : result_reg = 4'b0111;
      default : result_reg = {4 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
