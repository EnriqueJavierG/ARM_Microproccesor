`include "Datapath.v"
`include "ControlUnit.v"
`include "RAM.v"

module CPU (input Clk, clr, enable);
    // inputs
    wire FRld, RFld, MDRld, MARld, IRld, MA1, MA0, MB1, MB0, MC1, MC0, MD, ME, Cin, OP4, OP3, OP2, OP1, OP0, R_W, MOV;

    // outputs
    wire [31:0] Inst_from_IR, dataout_MDR, addressout_MAR,Inst_from_mem, Inst_from_mem_be;
    wire cond , MOC;
    wire [4:0] MLR_to_Reg;

    //Data path
    //output wire [31:0] Instruction, dataout, address_out, output cond, input [31:0] Inst_in, input FRld, RFLd, MDRld, MARld, IRld, Clk, MA1, MA0, MB1, MB0, MC1, MC0, MD, ME, Cin, OP4, OP3, OP2, OP1, OP0
    Datapath datapath(Inst_from_IR, dataout_MDR, addressout_MAR, cond, Inst_from_mem, FRld, RFld, MDRld, MARld, IRld, Clk, MA1, MA0, MB1, MB0, MC1, MC0, MD, ME, Cin, OP4, OP3, OP2, OP1, OP0, MLR_to_Reg);

    //Control Unit 
    //input clk, input clear,input MOC,input Cond, input [31:0]IR, output wire FR_ld,output wire RF_ld,output wire IR_ld,output wire MAR_ld,
    //              output wire MDR_ld,output wire R_W,output wire MOV, output wire MA1, output wire  MA0, 
    //              output wire MB1,output wire MB0,output wire MC1,output wire MC0, output wire MD,output wire ME,
    //             output wire OP4,output wire OP3,output wire OP2,output wire OP1,output wire OP0
    ControlUnit CU(Clk, clr, MOC, cond, Inst_from_IR, FRld, RFld, IRld, MARld, MDRld, R_W, MOV, MA1, MA0, MB1, MB0, MC1, MC0, MD, ME, OP4, OP3, OP2, OP1, OP0, type,MLR_to_Reg);
    
    //output reg [0:31] DataOut, output reg MOC, input
    //Enable, input ReadWrite, input [0:8] Address, input [0:31] DataIn, 
    //input [0:1] type, input MOV
    ram256x32 ram(Inst_from_mem, MOC, enable, R_W, addressout_MAR, dataout_MDR, Inst_from_IR, MOV, type);

endmodule