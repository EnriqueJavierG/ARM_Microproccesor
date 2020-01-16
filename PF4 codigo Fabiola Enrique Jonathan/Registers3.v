module Register2_3(input [31:0] Ds,input Clk, input Load, output reg [31:0] Qs);
    initial Qs <= 32'd0; 
    always @ (posedge Clk) begin//
    if(Load)
        Qs <= Ds;
        end
endmodule

module mux_2x1_5b2_3(output reg [4:0] exit,input sel ,input [4:0] in0, input [4:0] in1);
always @ (*)
begin
 case (sel)
  1'b0: exit <= in0;
  1'b1: exit <= in1;
 endcase
end
endmodule

module mux_2x1_4b2_3(output reg [3:0] exit,input sel ,input [3:0] in0, input [3:0] in1);

always @ (*)
begin
 case (sel)
  1'b0: exit <= in0;
  1'b1: exit <= in1;
 endcase
end
endmodule

module mux_4x1_4b2_3(output reg [3:0] exit,input [1:0] sel ,input [3:0] in0, input [3:0] in1, input [3:0] in2,input [3:0] in3);

always @ (*)
begin
 case (sel)
  2'b00: exit <= in0;
  2'b01: exit <= in1;
  2'b10: exit <= in2;
  2'b11: exit <= in3;
 endcase
end
endmodule

module MUX2x1_5bits2_3(input s0, input [4:0] in0, in1, output reg [4:0] out);

always @(*) begin
case(s0)
    1'b0: begin // viene del ALU
      out[4] <= 0; 
      out <= in0; 
    end
    1'b1: begin // viene del shifer
      out <= in1;
    end
endcase
end
endmodule

module PSR2_3(output reg N, Z, C, V, input Nin, Zin, Cin, Vin, Clk, Ld);
    initial N <= 1'b0;
    initial Z <= 1'b0;
    initial C <= 1'b0;
    initial V <= 1'b0;
    
    always @ (posedge Clk) begin
      if (Ld) begin
        N <= Nin;
        Z <= Zin;
        C <= Cin;
        V <= Vin;
      end
    end
  endmodule

module MUX4x1_32b_3(input s0, input s1, input [31:0] in0, input [31:0] in1, input [31:0] in2, input [31:0] in3, output reg [31:0] out);
//parameter [] select = {s1,s0};
always @ (*) begin
case({s1,s0})
    2'b00: begin
      out <= in0;
    end
    2'b01: begin
      out <= in1;
    end
    2'b10: begin
      out <= in2;
    end
    2'b11: begin
      out <= in3;
    end
endcase
end
endmodule

module mux_2x1_32b(output reg [31:0] exit, input sel, input [31:0] in0, input [31:0] in1);

always @ (*)
begin
 case (sel)
  1'b0: exit <= in0;
  1'b1: exit <= in1;
 endcase
end
endmodule