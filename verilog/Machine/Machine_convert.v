// Automatically generated Verilog-2001
module Machine_convert(ds1
                      ,result);
  input [31:0] ds1;
  output [7:0] result;
  reg [7:0] result_reg;
  always @(*) begin
    case(ds1)
      32'd104 : result_reg = 8'b01110100;
      32'd101 : result_reg = 8'b01111011;
      32'd108 : result_reg = 8'b00110000;
      32'd111 : result_reg = 8'b01011100;
      32'd95 : result_reg = 8'b00001000;
      32'd119 : result_reg = 8'b00101010;
      32'd114 : result_reg = 8'b00110001;
      32'd100 : result_reg = 8'b01011110;
      32'd33 : result_reg = 8'b10000010;
      default : result_reg = 8'b00000000;
    endcase
  end
  assign result = result_reg;
endmodule
