// Automatically generated Verilog-2001
module Machine_nibbleToSeg(v
                          ,result);
  input [3:0] v;
  output [7:0] result;
  reg [7:0] result_reg;
  always @(*) begin
    case(v)
      4'b0000 : result_reg = 8'b01000000;
      4'b0001 : result_reg = 8'b01111001;
      4'b0010 : result_reg = 8'b00100100;
      4'b0011 : result_reg = 8'b00110000;
      4'b0100 : result_reg = 8'b00011001;
      4'b0101 : result_reg = 8'b00010010;
      4'b0110 : result_reg = 8'b00000010;
      4'b0111 : result_reg = 8'b01111000;
      4'b1000 : result_reg = 8'b00000000;
      4'b1001 : result_reg = 8'b00010000;
      4'b1010 : result_reg = 8'b00001000;
      4'b1011 : result_reg = 8'b00000011;
      4'b1100 : result_reg = 8'b01000110;
      4'b1101 : result_reg = 8'b00100001;
      4'b1110 : result_reg = 8'b00000110;
      4'b1111 : result_reg = 8'b00001110;
      default : result_reg = {8 {1'bx}};
    endcase
  end
  assign result = result_reg;
endmodule
