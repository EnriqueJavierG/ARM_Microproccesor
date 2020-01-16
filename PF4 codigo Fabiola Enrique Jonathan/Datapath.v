// conectar todos los modulos del datapath sin la memoria

`include "ConditionTester.v"
`include "ALUinsandouts.v"
`include "ShiftandSignExtender.v"
`include "RFIO.v"
`include "Registers3.v"

module Datapath(output wire [31:0] Instruction, dataout, address_out, output cond, input [31:0] Inst_in, input FRld, RFLd, MDRld, MARld, IRld, Clk, MA1, MA0, MB1, MB0, MC1, MC0, MD, ME, Cin, OP4, OP3, OP2, OP1, OP0,input [4:0] MLR_to_Reg);

    wire [31:0] result, A, B, Inst_in, operand_from_shifter, PB, datain, address_in, from_memory, from_alu;
    //wire [31:0] A, B, Inst_in, operand_from_shifter, PB, datain, address_in, from_memory, from_alu;
    wire N, Zero, C, V, cond, Cout;

    Register2_3 IR (Inst_in, Clk, IRld, Instruction);

    MUX4x1_32b_3 MuxB(MB0, MB1, PB, operand_from_shifter, dataout, 32'd0, B);

    // este modulo tiene el ALU, el MuxD y el flag register
    // inputs: MD0, operandos A y B, CarryIn, Clk, Ld, IR[24:21], Opcode4-opcode0
    // outputs: result, N, Zero, C, V
    ALUio aluio(result, N, Zero, C, V, A, B, MD, Clk, FRld, Cin, {1'b0, Instruction[24:21]}, {OP4, OP3, OP2, OP1, OP0});

    // inputs: flags, IR
    // outputs: cond bit 
    ConditionTester conditionTester(cond, Instruction, N, Zero, C, V);

    // inputs: resultado del ALU, RFLd(viene de CU), MA0, MA1, MC0, MC1, IR, clk
    // outputs: PA, PB (datums)
    RFio rfio(A, PB, result, RFLd, {MA1, MA0}, {MC1, MC0}, Instruction, Clk,MLR_to_Reg);

    // inputs: IR, Rm, Cin
    // outputs: operand, Cout
    Shifter shifter(operand_from_shifter, Cout, Cin, Instruction, PB);

    Register2_3 MDR(datain, Clk, MDRld, dataout);

    Register2_3 MAR(result, Clk, MARld, address_out);

    mux_2x1_32b MuxE(datain, ME, Inst_in, result);

endmodule