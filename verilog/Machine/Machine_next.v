// Automatically generated Verilog-2001
module Machine_next(ds1,result);
  input [1:0] ds1;
  output [1:0] result;
  wire [1:0] case_alt;
  assign case_alt = ds1 + 2'd1;
  
  reg [1:0] result_reg;
  always @(*) begin
    case(ds1)
      2'd3 : result_reg = 2'd0;
      default : result_reg = case_alt;
    endcase
  end
  assign result = result_reg;
endmodule
