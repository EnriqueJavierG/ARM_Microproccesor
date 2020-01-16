`include "NextStateDecoderFa.v"
`include "StateRegister.v"
`include "CUEncoder.v"
module ControlUnit(input clk, input clear,input MOC,input Cond, input [31:0]IR, output wire FR_ld,output wire RF_ld,output wire IR_ld,output wire MAR_ld,
                  output wire MDR_ld,output wire R_W,output wire MOV, output wire MA1, output wire  MA0, 
                  output wire MB1,output wire MB0,output wire MC1,output wire MC0, output wire MD,output wire ME,
                 output wire OP4,output wire OP3,output wire OP2,output wire OP1,output wire OP0, output wire type, output wire [4:0] MLR_to_Reg);

wire [9:0]NextState;
wire [9:0]CurrentState;
wire [4:0] MLR;
StateRegister Register(NextState,clk,clear,CurrentState);
NextStateDecoder Decoder( MLR,NextState,CurrentState,IR[31:0],Cond,MOC);
CUEncoder encoder(MLR,CurrentState,FR_ld, RF_ld, IR_ld, MAR_ld,MDR_ld,  R_W, MOV, MA1, MA0, MB1, MB0, MC1, MC0, MD,ME,OP4, OP3, OP2, OP1, OP0, type,MLR_to_Reg);

endmodule

