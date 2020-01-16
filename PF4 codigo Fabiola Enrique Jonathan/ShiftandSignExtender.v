module Shifter(output reg [31:0] operand, output reg Cout, input Cin, input[31:0] IR, Rm);
 reg [31:0] temp;
 reg [29:0] temp2;
 reg MSB;
 integer positions, rotate_imm, index;

 always @(IR, Rm) begin
     // initializing Cout
     //$display("Entre al shifter!!!");
     Cout = Cin;
     case (IR[27:25])
         3'b000: // shift by immediate -----------------------------------------------------
          begin
             if (IR[4] == 0) begin
               // $display("pimero 1");
               case (IR[6:5])
              
                   2'b00: // LSL
                   begin//11100001010101001100000011110110
                   //$display("pimero 3");
                     if (IR[11:7] == 5'b00000)
                        operand = Rm;
                     else begin
                         positions = IR[11:7];
                         temp = Rm; 
                         for(index = 0; index < positions; index = index + 1) begin
                             operand = temp << 1;
                         end
                         Cout = (IR[20] == 1'b1)? operand[31] : Cin;
                     end
                   end 

                   2'b01: // LSR
                   begin
                   //$display("Entro correctamente");
                     positions = IR[11:7];
                     temp = Rm;
                     for (index = 0; index < positions; index = index + 1)
                        temp = temp>>1;
                     Cout = (IR[20] == 1'b1)? temp[31] : Cin;
                     operand = temp;
                   end

                   2'b10: // ASR
                   begin
                     positions = IR[11:7];
                     temp = Rm;
                     for (index = 0; index < positions; index = index + 1)
                        temp = temp>>>1;
                     Cout = (IR[20] == 1'b1)? temp[31] : Cin;
                     operand = temp;
                   end

                   2'b11: // ROR
                   begin
                  // $display("pimero 4");
                     if (IR[11:7] == 5'b00000)
                        begin
                        temp = Rm;
                        temp = temp>>1;
                        temp[31] = Cin;
                        end
                      else begin
                     // $display("Entro a ROR");
                          temp = Rm;
                          positions = IR[11:7];
                          for(index = 0; index < positions; index = index + 1)begin
                              MSB = temp[0];
                              temp = temp>>1;
                              temp[31] = MSB;
                          end
                          Cout = (IR[20] == 1'b1)? temp[31] : Cin;
                          operand = temp;
                      end
                    end    
                  endcase
               end
            if (IR[4] == 1 && IR[7] == 1) begin // Miscellaneous L/S -----------------------------------------------------
                 temp = 32'b0;
                 temp[7:0] = {IR[11:8], IR[3:0]};
                 operand = temp;
                //temp = {{IR[11:8] << 4} || {IR[3:0]}};
            end   
          end
           //1110 0001 0101 0100 1100 0000 1111 0110
           3'b001: // 32-bit immediate -----------------------------------------------------
           begin
           
               temp = 32'b0;
               temp[7:0] = IR[7:0];
               rotate_imm = IR[11:8];
               positions = 2 * rotate_imm;
               for (index = 0; index < positions; index = index + 1 ) begin
                   MSB = temp[0];
                   temp = temp >> 1;
                   temp[31] = MSB;
               end
               Cout = (IR[20] == 1)? temp[31]:Cin;
               operand = temp;
           end

           3'b010: begin // immediate offset L/S -----------------------------------------------------
               temp = 32'b0;
               temp[11:0] = IR[11:0];
               operand = temp;
              // $display("Immediate offset");
           end

           3'b101: begin // branch -----------------------------------------------------
              {Cout, operand} = {{6{IR[23]}}, IR[23:0]} << 2;
            //  $display("Branch");
           end

           default: begin
           //  $display("Default");
           end
         
     endcase
 end
endmodule