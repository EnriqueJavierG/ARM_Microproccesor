`include "Registers.v"
`include "ShiftandSignExtender.v"


module IRandShifter(output [31:0] operand, output Cout, input [31:0] Instruction,input [31:0] Rm, input Clk, input Ld, input Cin);
    wire [31:0] Inst;
    Register IR (Instruction, Clk, Ld, Inst);

    Shifter shifter (operand, Cout, Cin, Inst, Rm);

endmodule