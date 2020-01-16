`include"RegisterFile.v"
`include"Registers.v"
module RFio(output wire [31:0] outA, output wire [31:0] outB,input [31:0] PC,input RFload, input[1:0] ma,input[1:0] mc,input [31:0] IR,input clk, input [4:0] MLR_to_Reg); 

 //multiplexers
wire [3:0] maout;
wire [3:0] mcout;

mux_4x1_4b muxA(maout,ma, IR[19:16],IR[15:12],4'b1111,MLR_to_Reg [3:0]);
mux_4x1_4b muxC(mcout,mc,IR[15:12],4'b1111,IR[19:16],MLR_to_Reg [3:0]);
  
register_file RF(outB,outA, PC,clk, RFload, mcout, maout, IR[3:0]);

endmodule