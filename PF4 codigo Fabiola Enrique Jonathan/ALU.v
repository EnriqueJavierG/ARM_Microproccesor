// ALU Module Implemetation by Fabiola Badillo Ramos

module ALU(output reg [31:0] result, output reg N, Zero, C, V, input [31:0] A, B, input Carry, input [4:0] sel);
    reg original_sign, keep_sign_on_ovfl, set_ovlf;
    reg [31:0] local; // used for operations that only update flags 


    always @*
      begin
      C = 0;
        case (sel)

        5'b00000: // A AND B
        begin 
             result <= A & B;
        end

        5'b00001: // A EOR B
        begin
            // result <= A ^ B;
            result <= (A & !B) | (!A & B);
        end

        5'b00010: // A - B
        begin
            {C, result} <= {1'b0, A} - {1'b0, B};
        end

        5'b00011: // B - A
        begin
            {C, result} <= {1'b0, B} - {1'b0, A};
        end

        5'b00100: // A + B
        begin
            {C, result} <= A + B;
        end

        5'b00101: // A + B + Cin
        begin
            if (A == -1 || B == -1) 
            begin
                result <= A + B + Carry; 
                C = 0;
            end
            else
            {C, result} <= A + B + Carry;
        end

        5'b00110: // A - B - !Cin
        begin
          if (A == -1 || B == -1)
          begin
            result <= A - B - !Carry;
            C = 0;
            end
          else
            {C, result} <= {1'b0, A} - {1'b0, B} - !Carry; 
        end

        5'b00111: // B - A - !Cin
        begin
            if (A == -1 || B == -1)
            begin
                result <= B - A - !Carry;
                C = 0;
            end
            else
            {C, result} <= {1'b0, B} - {1'b0, A} - !Carry; 
        end

        5'b01000: // TEST
        begin
            result <= A & B;
        end

        5'b01001: // TEQ 
        begin
           // result <= (A & !B) | (!A & B);
           // result <= (A && !B) | (!A && B);
           result <= A ^^ B;
        end

        5'b01010: // CMP - update flags after A - B
        begin
            {C, result} <= {1'b0, A} - {1'b0, B};
        end

        5'b01011: // CMN - update flags after A + B
        begin  
            {C, result} <= A + B;
        end

        5'b01100: // A OR B
        begin
            result <= A | B;
        end
        
        5'b01101: // B
        begin   
            result <= B;
        end

        5'b01110: // A AND !B
        begin   
            result <= A & !B;
        end

        5'b01111: // !B
        begin
            result <= !B;
        end

        5'b10000: // A
        begin
            result <= A;
        end

        5'b10001: // A + 4 this assumes no overflow 
        begin
            result <= A + 4;
        end
         
        5'b10010: // A + B + 4
        begin
          result <= A + B + 4;
        end

        default : result <= A;

        endcase     

        // logic for managing the flags
        // Zero = 0;
        // N = 0;
        // C = 0;
        // V = 0;        

        // logic for getting the N flag 
        original_sign = ((sel == 00011) || (sel == 00111))? A[31]:B[31]; 
        keep_sign_on_ovfl <= (  (  ( (sel == 5'b00010) || (sel == 5'b00011) || (sel == 5'b00110) || (sel == 5'b00111) || (sel == 5'b01010) ) && (A[31] != B[31]))   || (((sel == 5'b00100) || (sel == 5'b00101) || (sel == 5'b01011) || (sel == 5'b10010) || (sel == 10001)) && (A[31] == B[31]))); // subtraction and addition
        N = (result[31]) ^ ((keep_sign_on_ovfl) && (original_sign != result[31]));

        Zero = (result == 32'b0)? 1'b1:1'b0;    // Zero flag

        // logic for getting the V flag
        set_ovlf <= ((((sel == 5'b00010) || (sel == 5'b00011) || (sel == 5'b00110) || (sel == 5'b00111) || (sel == 5'b01010)) && (A[31] != B[31])) || (((sel == 5'b00100) || (sel == 5'b00101) || (sel == 5'b01011) || (sel == 5'b10001) || (sel == 5'b10010)) && (A[31] == B[31]))); // subtraction and addition
        V = (set_ovlf) && (original_sign != result[31]); 
      end
endmodule