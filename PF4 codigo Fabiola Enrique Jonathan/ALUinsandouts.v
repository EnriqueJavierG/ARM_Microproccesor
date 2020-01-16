`include "ALU.v"
`include "Registers2.v"

module ALUio(output [31:0] result, output N, Zero, C, V, input [31:0] A, B, input MuxD0, Clk, Load, carry, input [4:0] sel_alu, sel_cu);

    wire [4:0] sel;

    MUX2x1_5bits2 MuxD (MuxD0, sel_alu, sel_cu, sel);

    ALU alu (result, N_, Zero_, C_, V_, A, B, carry, sel); 

    // PSR psr (flags, N, Zero, C, V, N_, Zero_, C_, V_, Clk, Load);
    PSR2 psr (N, Zero, C, V, N_, Zero_, C_, V_, Clk, Load);

endmodule