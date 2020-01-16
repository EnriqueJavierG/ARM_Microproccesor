//Autor: Enrique J. Gonzalez Mendez
//Requisito de ICOM4215
//Prof. N. Rodriguez
//DESCRIPCION:
// 
//
//Program counter debe estar correcto
//=================================================================================


//Autor: 
//Requisito de ICOM4215
//Prof. N. Rodriguez
//DESCRIPCION:
// 
//=================================================================================
module NextStateDecoder(output reg[4:0] MLR,output reg [9:0] Next_State , input [9:0] Current_State ,
                          input [31:0] IR, input Condition, input MOC);
//choosen in state 4                    
//[4:0] OPCODE = IR[24:21]; 
//wire Bit22
//wire Bit23
reg [15:0]  lista [4:0];
reg [4:0] counter; //= 5'd0;
reg [4:0] index;
reg [15:0]  lista2 [4:0];
reg [4:0] counter2; //= 5'd0;
reg [4:0] index2;
initial Next_State <= 10'b0000000000;
initial begin 
counter <= 5'd0;
index <= 5'd0;
counter2 <=5'd0 ;
index2 <= 5'd0;
end
always @ (*)
begin
  casex(Current_State)
    10'd0: // State 0
    begin
     Next_State <= 10'd1;
    end

    10'd1: begin // State 1: CU-> 00010001000001010000
    Next_State <= 10'd2;
    end

    10'd2: begin // State 2: CU-> 
    Next_State <= 10'd3;
    end

    10'd3:  begin // State 3: CU-> 
    if(MOC)
        Next_State <= 10'd4;
    else 
        Next_State <=  10'd3;
    end
    //Todos los modos
    10'd4: begin // State 4: CU-> 
    if(!Condition)
        Next_State <= 10'd1;
    else begin
     counter = 5'd0;
     index = 5'd0;
      case(IR[27:25])
        3'b000: begin // data proccesing immediate shift or load/store addresing mode 3 // verified
         //Next_State <= 5;
          if((IR[7]==1'b1) && (IR[4]==1'b1)) begin //load and store addresing mode 3
            if(IR[24]) begin // Bit 24 = 1
              case (IR[22:21]) // verified
                2'b10: begin // Immediate offset //Verified 2
                  if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]}) //i
                      3'b001: begin //STRH
                      Next_State <= 10'd457;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd233;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd401;
                      end
                      3'b101: begin // LDRH 
                      Next_State <= 10'd345; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd289;    
                      end     
                      3'b111: begin //LDRSH 
                      Next_State <= 10'd345;    
                      end
                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd461;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd237;
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd405;
                      end
                      3'b101: begin // LDRH  
                      Next_State <= 10'd349; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd293;    
                      end     
                      3'b111: begin //LDRSH 
                      Next_State <= 10'd349;    
                      end

                    endcase
                  end
                end
                2'b00: begin // Register offset // verified//Verified 2
                 if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd485;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd261;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd429;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd373;    
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd317;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd373;    
                      end

                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd489;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd265;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd433;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd377;    
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd321;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd377;    
                      end

                    endcase
                  end
                  
                end
                2'b11: begin // Immediate pre-indexed // verified//Verified 2
                 if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd465; 
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd241;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd409;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd353; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd297;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd353; 
                      end

                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd470; 
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd246;
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd414;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd358;    
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd302;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd358;
                      end

                    endcase
                  end
                  
                end
                2'b01: begin // Register pre-indexed // verified
                 if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd493;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd269;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd437;
                      end
                      3'b101: begin // LDRH 
                      Next_State <= 10'd381; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd325;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd381;  
                      end

                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd498;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd274;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd442;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd386; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd330;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd386;  
                      end

                    endcase
                  end
                  
                end
            
              endcase
              end // end Bit 24
              else begin // bit 24 = 0
                case (IR[22:21]) // verified
                2'b10: begin // Immediate post indexed // verified //Verified 2
                 if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd475;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd251; 
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd419;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd363;
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd307;  
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd363; 
                      end

                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd480;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd256;
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd424;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd368; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd312;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd368; 
                      end

                    endcase
                  end
                  
                end
                2'b00: begin // Register post indexed // verified
                 if(IR[23]) begin //Add
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd503;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd279;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd447;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd391; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd335;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd391; 
                      end

                    endcase
                  end
                  else begin // Sub
                    case({IR[20],IR[6], IR[5]})
                      3'b001: begin //STRH
                      Next_State <= 10'd508;
                      end
                      3'b010: begin //LDRD
                      Next_State <= 10'd284;  
                      end
                      3'b011: begin //STRD
                      Next_State <= 10'd452;
                      end
                      3'b101: begin // LDRSH 
                      Next_State <= 10'd396; 
                      end
                      3'b110:begin //LDRSB
                      Next_State <= 10'd340;    
                      end     
                      3'b111: begin //LDRSH
                      Next_State <= 10'd396; 
                      end

                    endcase
                  end //Address 3 end
                  
                end
                endcase //bit 24
              end
            end
            else begin // (bit 7 and 4) != 1
              Next_State <= 5;
            end
          end
        
        3'b001:  // data proccesing immediate // verified
          Next_State <= 10'd5;
        //Addressing mode 2
        3'b010: begin // Load/store immediate offset // verified
          if(IR[20]) begin // Load
            if(IR[24] && IR[21] == 0) begin // immediate offset
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd62; //LDRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd6; //LDR add word
                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd66; // LDBR sub byte
                end
                else begin //word
                  Next_State <= 10'd10 ; // LDB sub word
                end
              end//End sub
            end// end normal
            else if(IR[24] && IR[21]) begin // immediate pre-indexed 
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd70; //LDRB pre add byte 
                end
                else begin // Word
                  Next_State <= 10'd14; //LDR pre add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd75; // LDBR pre  sub byte
                end
                else begin //word
                  Next_State <= 10'd19 ; // LDB pre sub word
                end
              end//End sub
            end//end pre index
            
            else if(IR[24] == 0 && (IR[21] == 0 || IR[21] == 1)) begin // immediate post index
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd80; //LDRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd24; //LDR add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd85; // LDBR sub byte
                end
                else begin //word
                  Next_State <= 10'd29 ; // LDR sub word
                end
              end//End sub
            end // end post index
          end// end immediate offset load
          //End load ===========================================================================
          else begin //Store
             if(IR[24] && IR[21] == 0) begin // immediate offset
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd177; //STRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd118; //STR add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd181; // STBR sub byte
                end
                else begin //word
                  Next_State <= 10'd122 ; // STB sub word
                end
              end//End sub
            end// end normal
            else if(IR[24] && IR[21]) begin // immediate pre-indexed 
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd185; //STRB pre add byte 
                end
                else begin // Word
                  Next_State <= 10'd126; //STR pre add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd190; // STBR pre  sub byte
                end
                else begin //word
                  Next_State <= 10'd131 ; // STB pre sub word
                end
              end//End sub
            end//end pre index

            else if(IR[24] == 0 && (IR[21] == 0 || IR[21] == 1)) begin // immediate post index
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd195; //STRB post add byte 
                end
                else begin // Word
                  Next_State <= 10'd136; //STR post add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd200; // STRB post  sub byte
                end
                else begin //word
                  Next_State <= 10'd141; // STR post sub word
                end
              end//End sub
            end // end post index  
          end
        end// end imm 
        //=========================================================
        3'b011: begin //Load/store register offset // verified //Verified 2
          //scale register, take into account bit 4
           if(IR[20]) begin // Load
            if(IR[24] && IR[21] == 0 && IR[4] == 0) begin // Register offset
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd90; //LDRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd34; //LDR add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd94; // LDBR sub byte
                end
                else begin //word
                  Next_State <= 10'd38 ; // LDB sub word
                end
              end//End sub
            end// end normal
            else if(IR[24] && IR[21] && IR[4] == 0) begin // immediate pre-indexed 
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd98; //LDRB pre add byte 
                end
                else begin // Word
                  Next_State <= 10'd42; //LDR pre add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd103; // LDBR pre  sub byte
                end
                else begin //word
                  Next_State <= 10'd47 ; // LDB pre sub word
                end
              end//End sub
            end//end pre index

            else if(IR[24] == 0 && (IR[21] == 0 || IR[21] == 1) && IR[4] == 0) begin // immediate post index
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd108; //LDRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd113; //LDR add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd85; // LDBR sub byte
                end
                else begin //word
                  Next_State <= 10'd57 ; // LDR sub word
                end
              end//End sub
            end // end post index
          end// end immediate offset load
          //End load =======================================
          else begin //Store
             if(IR[24] && IR[21] == 0) begin // Register offset
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd205; //STRB add byte 
                end
                else begin // Word
                  Next_State <= 10'd146; //STR add word
                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd209; // STRB sub byte
                end
                else begin //word
                  Next_State <= 10'd150; // STR sub word
                end
              end//End sub
            end// end normal
            else if(IR[24] && IR[21]) begin // immediate pre-indexed 
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd213; //STRB pre add byte 
                end
                else begin // Word
                  Next_State <= 10'd157; //STR pre add word

                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd218; // STBR pre  sub byte
                end
                else begin //word
                  Next_State <= 10'd162; // STB pre sub word
                end
              end//End sub
            end//end pre index

            else if(IR[24] == 0 && (IR[21] == 0 || IR[21] == 1)) begin // immediate post index
              if(IR[23]) begin // Add
                if(IR[22]) begin //Byte 
                  Next_State <= 10'd223; //STRB post add byte 
                end
                else begin // Word
                  Next_State <= 10'd167; //STR post add word
                end
              end // end add
              else begin //Sub
                if(IR[22]) begin //byte
                  Next_State <= 10'd200; // STRB post  sub byte
                end
                else begin //word
                  Next_State <= 10'd172 ; // STR post sub word
                end
              end//End sub
            end // end post index  
          end
        end// end register offset
        3'b100: begin // Load/stores multiples // verified //Verified 2
          //bit 20 dice store o load
          if(IR[20]) begin // load
         
            case (IR[24:23]) // verified//Verified 2
              2'b00:begin //LDMDA  // verified//Verified 2
              // 4 opciones 
              end 
              2'b01:begin // LDMIA // verified//Verified 2
              // verificar que registros se utilizaran en los multiples
              //reg [15:0] lista [4:0];
                  counter = 5'd0;
                  index = 5'd0;
                if(IR[0]) begin
                  lista[counter] = 5'd0;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[1]) begin
                  lista[counter] = 5'd1;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[2]) begin
                  lista[counter] = 5'd2;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[3]) begin
                 lista[counter] = 5'd3;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[4]) begin
                 lista[counter] = 5'd4;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[5]) begin
                 lista[counter] = 5'd5;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[6]) begin
                 lista[counter] = 5'd6;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[7]) begin
                 lista[counter] = 5'd7;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[8]) begin
                 lista[counter] = 5'd8;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[9]) begin
                 lista[counter] = 5'd9;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[10]) begin
                 lista[counter] = 5'd10;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[11]) begin
                 lista[counter] = 5'd11;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[12]) begin
                 lista[counter] = 5'd12;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[13]) begin
                 lista[counter] = 5'd13;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[14]) begin
                 lista[counter] = 5'd14;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[15]) begin
                 lista[counter] = 5'd15;
                  counter = counter + 1;
                  //index++;
                end
                // end multiple load 
                Next_State <= 10'd513;
                
              end
              2'b10:begin //LDMDB   // verified//Verified 2

              end 
              2'b11:begin // LDMIB // verified//Verified 2

              end  
               
            endcase
          end // end load
          else begin // Start store
           
          case (IR[24:23]) //Verified 2
          
              2'b00:begin//STMDA // verified //Verified 2

              end 
              2'b01:begin//STMIA // verified//Verified 2
              counter2 = 5'd0;
              index2 = 5'd0;
                if(IR[0]) begin
                  lista2[counter2] = 5'd0;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[1]) begin
                  lista2[counter2] = 5'd1;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[2]) begin
                  lista2[counter2] = 5'd2;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[3]) begin
                 lista2[counter2] = 5'd3;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[4]) begin
                 lista2[counter2] = 5'd4;
                  counter = counter + 1;
                  //index++;
                end
                if(IR[5]) begin
                 lista2[counter2] = 5'd5;
                 counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[6]) begin
                 lista2[counter2] = 5'd6;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[7]) begin
                 lista2[counter2] = 5'd7;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[8]) begin
                 lista2[counter2] = 5'd8;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[9]) begin
                 lista2[counter2] = 5'd9;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[10]) begin
                 lista2[counter2] = 5'd10;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[11]) begin
                 lista2[counter2] = 5'd11;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[12]) begin
                 lista2[counter2] = 5'd12;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[13]) begin
                 lista2[counter2] = 5'd13;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[14]) begin
                 lista2[counter2] = 5'd14;
                  counter2 = counter2 + 1;
                  //index++;
                end
                if(IR[15]) begin
                 lista2[counter2] = 5'd15;
                  counter2 = counter2 + 1;
                  //index++;
                end
                $display("Counter:{%d}", counter2);
                Next_State <= 10'd518;
              end
              2'b10:begin // // verified//Verified 2

              end 
              2'b11:begin // // verified//Verified 2

              end  
               
            endcase

          end
        end
        3'b101: begin // Branch and Branch with Link // verified
          if(IR[24] == 0)
          Next_State <=10'd154;
          else
          Next_State <=10'd155;
        end
        //default: Next_State <= 10'd5; 
        endcase
      end
    end// end state 4
    10'd5: begin // State 5: CU-> 
      Next_State <= 10'd1;
    end

    //4 states: 6 --> 9
    10'd6: begin // State 6: CU-> 
      Next_State <= 10'd7;
    end
    10'd7: begin // State 7: CU-> 
      Next_State <= 10'd8;
    end
    10'd8: begin // State 8: CU-> 
    if(MOC) begin
      Next_State <= 10'd9;
    end
    else begin
      Next_State <= 10'd8;
    end
    end
    10'd9: begin // State 9: CU-> 
      Next_State <= 10'd1;
    end

    //4 states: 10-->13
    10'd10: begin // State 5: CU-> 
      Next_State <= 10'd11;
    end
    10'd11: begin // State 5: CU-> 
      Next_State <= 10'd12;
    end
    10'd12: begin // State 5: CU-> 
    begin
      Next_State <= 10'd13;  
    end
    begin
      Next_State <= 10'd12;
    end
    end
    10'd13: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //5 states: 14 --> 18 
    10'd14: begin // State 5: CU-> 
    Next_State <= 10'd15;
    end
    10'd15: begin // State 5: CU-> 
    Next_State <= 10'd16;
    end
    10'd16: begin // State 5: CU-> 
    Next_State <= 10'd17;
    end
    10'd17: begin // State 5: CU-> 
    if(MOC)begin
    Next_State <= 10'd18;  
    end
    else
    Next_State <= 10'd17;
    end
    10'd18: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //5 States: 19 --> 23
    10'd19: begin // State 5: CU-> 
    Next_State <= 10'd20;
    end
    10'd20: begin // State 5: CU-> 
    Next_State <= 10'd21;
    end
    10'd21: begin // State 5: CU-> 
    Next_State <= 10'd22;
    end
    10'd22: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd23;
    else
    Next_State <= 10'd22;
    end
    10'd23: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5:  24 --> 28
    10'd24: begin // State 5: CU-> 
    Next_State <= 10'd25;
    end
    10'd25: begin // State 5: CU-> 
    Next_State <= 10'd26;
    end
    10'd26: begin // State 5: CU-> 
    Next_State <= 10'd27;
    end
    10'd27: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd28;
    else 
    Next_State <= 10'd27;
    end
    10'd28: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // states 5: 29 --> 33
    10'd29: begin // State 5: CU-> 
    Next_State <= 10'd30;
    end
    10'd30: begin // State 5: CU-> 
    Next_State <= 10'd31;
    end
    10'd31: begin // State 5: CU-> 
    Next_State <= 10'd32;
    end
    10'd32: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd33;
    else
    Next_State <= 10'd32;
    end
    10'd33: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 4: 34-->37
    10'd34: begin // State 5: CU-> 
    Next_State <= 10'd35;
    end
    10'd35: begin // State 5: CU-> 
    Next_State <= 10'd36;
    end
    10'd36: begin // State 5: CU->
    if(MOC) 
    Next_State <= 10'd37;
    else 
    Next_State <= 10'd36;
    end
    10'd37: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 4: 38 --> 41
    10'd38: begin // State 5: CU-> 
    Next_State <= 10'd39;
    end
    10'd39: begin // State 5: CU-> 
    Next_State <= 10'd40;
    end
    10'd40: begin // State 5: CU-> 
    Next_State <= 10'd41;
    end
    10'd41: begin // State 5: CU-> 
    Next_State <= 10'd42;
    end

    //states 5: 42 --> 46
    10'd42: begin // State 5: CU-> 
    Next_State <= 10'd43;
    end
    10'd43: begin // State 5: CU-> 
    Next_State <= 10'd44;
    end
    10'd44: begin // State 5: CU->
    if(MOC) 
    Next_State <= 10'd45;
    else
    Next_State <= 10'd44;
    end
    10'd45: begin // State 5: CU-> 
    Next_State <= 10'd46;
    end
    10'd46: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 5: 47-->51
    10'd47: begin // State 5: CU-> 
    Next_State <= 10'd48;
    end
    10'd48: begin // State 5: CU-> 
    Next_State <= 10'd49;
    end
    10'd49: begin // State 5: CU-> 
    Next_State <= 10'd50;
    end
    10'd50: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd51;
    else
    Next_State <= 10'd50;
    end
    10'd51: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 5: 52 --> 56
    10'd52: begin // State 5: CU-> 
    Next_State <= 10'd53;
    end
    10'd53: begin // State 5: CU-> 
    Next_State <= 10'd54;
    end
    10'd54: begin // State 5: CU-> 
    Next_State <= 10'd55;
    end
    10'd55: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd56;
    else
    Next_State <= 10'd55;
    end
    10'd56: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 5: 57 --> 61
    10'd57: begin // State 5: CU-> 
    Next_State <= 10'd58;
    end
    10'd58: begin // State 5: CU-> 
    Next_State <= 10'd59;
    end
    10'd59: begin // State 5: CU->
    if(MOC) 
    Next_State <= 10'd60;
    else
    Next_State <= 10'd59;
    end
    10'd60: begin // State 5: CU-> 
    Next_State <= 10'd61;
    end
    10'd61: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    //states 4: 62 --> 65
    10'd62: begin // State 5: CU-> 
    Next_State <= 10'd63;
    end
    10'd63: begin // State 5: CU-> 
    Next_State <= 10'd64;
    end
    10'd64: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd65;
    else
    Next_State <= 10'd64;
    end
    10'd65: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    

    //states 4: 66 --> 69 
    10'd66: begin // State 5: CU-> 
    Next_State <= 10'd67;
    end
    10'd67: begin // State 5: CU-> 
    Next_State <= 10'd68;
    end
    10'd68: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd69;
    else
    Next_State <= 10'd68;
    end
    10'd69: begin // State 5: CU-> 
    Next_State <= 10'd70;
    end

    //states 5: 70 --> 74
    10'd70: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    10'd71: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    10'd72: begin // State 5: CU-> 
    Next_State <= 10'd73;
    end
    10'd73: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd74;
    else
    Next_State <= 10'd73;
    end
    10'd74: begin  
    Next_State <= 10'd1;
    end

    // States 5: 75 --> 79
    10'd75: begin // State 5: CU-> 
    Next_State <= 10'd76;
    end
    10'd76: begin // State 5: CU-> 
    Next_State <= 10'd77;
    end
    10'd77: begin // State 5: CU-> 
    Next_State <= 10'd78;
    end
    10'd78: begin // State 5: CU-> 
    Next_State <= 10'd79;
    end
    10'd79: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5:  80 -- > 84
    10'd80: begin // State 5: CU-> 
    Next_State <= 10'd81;
    end
    10'd81: begin // State 5: CU-> 
    Next_State <= 10'd82;
    end
    10'd82: begin // State 5: CU-> 
    Next_State <= 10'd83;
    end
    10'd83: begin // State 5: CU->
    if(MOC) 
    Next_State <= 10'd84;
    else
    Next_State <= 10'd83;
    end
    10'd84: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 85--> 89
    10'd85: begin // State 5: CU-> 
    Next_State <= 10'd86;
    end
    10'd86: begin // State 5: CU-> 
    Next_State <= 10'd87;
    end
    10'd87: begin // State 5: CU-> 
    Next_State <= 10'd88;
    end
    10'd88: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd89;
    else
    Next_State <= 10'd88;
    end
    10'd89: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 90 --> 93
    10'd90: begin // State 5: CU-> 
    Next_State <= 10'd91;
    end
    10'd91: begin // State 5: CU-> 
    Next_State <= 10'd92;
    end
    10'd92: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd93;
    else
    Next_State <= 10'd92;
    end
    10'd93: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 94 --> 97
    10'd94: begin // State 5: CU-> 
    Next_State <= 10'd95;
    end
    10'd95: begin // State 5: CU-> 
    Next_State <= 10'd96;
    end
    10'd96: begin // State 5: CU-> 
    if(MOC)
    Next_State <= 10'd97;
    else
    Next_State <= 10'd96;
    end
    10'd97: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 98 --> 102
    10'd98: begin // State 5: CU-> 
    Next_State <= 10'd99;
    end
    10'd99: begin // State 5: CU-> 
    Next_State <= 10'd100;
    end
    10'd100: begin // State 5: CU-> 
    Next_State <= 10'd101;
    end
    10'd101: begin // State 5: CU->
    if(MOC) 
    Next_State <= 10'd102;
    else
    Next_State <= 10'd101;
    end
    10'd102: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 103 --> 107
    10'd103: begin // State 5: CU-> 
    Next_State <= 10'd104;
    end
    10'd104: begin // State 5: CU-> 
    Next_State <= 10'd105;
    end
    10'd105: begin // State 5: CU-> 
    Next_State <= 10'd106;
    end
    10'd106: begin // State 5: CU-> 
    Next_State <= 10'd107;
    end
    10'd107: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 108 --> 112
    10'd108: begin // State 5: CU-> 
    Next_State <= 10'd109;
    end
    10'd109: begin // State 5: CU-> 
    Next_State <= 10'd110;
    end
    10'd110: begin // State 5: CU-> 
    Next_State <= 10'd111;
    end
    10'd111: begin // State 5: CU-> 
    Next_State <= 10'd112;
    end
    10'd112: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 113 --> 117
    10'd113: begin // State 5: CU-> 
    Next_State <= 10'd114;
    end
    10'd114: begin // State 5: CU-> 
    Next_State <= 10'd115;
    end
    10'd115: begin // State 5: CU-> 
    Next_State <= 10'd116;
    end
    10'd116: begin // State 5: CU-> 
    Next_State <= 10'd117;
    end
    10'd117: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 118 --> 121
    10'd118: begin // State 5: CU-> 
    Next_State <= 10'd119;
    end
    10'd119: begin // State 5: CU-> 
    Next_State <= 10'd120;
    end
    10'd120: begin // State 5: CU-> 
    Next_State <= 10'd121;
    end
    10'd121: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
   
    
    // States 5: 122 --> 125
    10'd122: begin // State 5: CU-> 
    Next_State <= 10'd123;
    end
    10'd123: begin // State 5: CU-> 
    Next_State <= 10'd124;
    end
    10'd124: begin // State 5: CU-> 
    Next_State <= 10'd125;
    end
    10'd125: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 126 --> 130
    10'd126: begin // State 5: CU-> 
    Next_State <= 10'd127;
    end
    10'd127: begin // State 5: CU-> 
    Next_State <= 10'd128;
    end
    10'd128: begin // State 5: CU-> 
    Next_State <= 10'd129;
    end
    10'd129: begin // State 5: CU-> 
    Next_State <= 10'd130;
    end
    10'd130: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 131 --> 135
    10'd131: begin // State 5: CU-> 
    Next_State <= 10'd132;
    end
    10'd132: begin // State 5: CU-> 
    Next_State <= 10'd133;
    end
    10'd133: begin // State 5: CU-> 
    Next_State <= 10'd134;
    end
    10'd134: begin // State 5: CU-> 
    Next_State <= 10'd135;
    end
    10'd135: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 136 --> 140
    10'd136: begin // State 5: CU-> 
    Next_State <= 10'd137;
    end
    10'd137: begin // State 5: CU-> 
    Next_State <= 10'd138;
    end
    10'd138: begin // State 5: CU-> 
    Next_State <= 10'd139;
    end
    10'd139: begin // State 5: CU-> 
    Next_State <= 10'd140;
    end
    10'd140: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 141 --> 145
    10'd141: begin // State 5: CU-> 
    Next_State <= 10'd142;
    end
    10'd142: begin // State 5: CU-> 
    Next_State <= 10'd143;
    end
    10'd143: begin // State 5: CU-> 
    Next_State <= 10'd144;
    end
    10'd144: begin // State 5: CU-> 
    Next_State <= 10'd145;
    end
    10'd145: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 146 --> 149
    10'd146: begin // State 5: CU-> 
    Next_State <= 10'd147;
    end
    10'd147: begin // State 5: CU-> 
    Next_State <= 10'd148;
    end
    10'd148: begin // State 5: CU-> 
    Next_State <= 10'd149;
    end
    10'd149: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    

    // States 5: 150 --> 153
    10'd150: begin // State 5: CU-> 
    Next_State <= 10'd151;
    end
    10'd151: begin // State 5: CU-> 
    Next_State <= 10'd152;
    end
    10'd152: begin // State 5: CU-> 
    Next_State <= 10'd153;
    end
    10'd153: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 154
    10'd154: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 155
    10'd155: begin // State 5: CU-> 
    Next_State <= 10'd156;
    end

    // States 5: 156
    10'd156: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    
    // States 5: 157 --> 161
    10'd157: begin // State 5: CU-> 
    Next_State <= 10'd158;
    end
    10'd158: begin // State 5: CU-> 
    Next_State <= 10'd159;
    end
    10'd159: begin // State 5: CU-> 
    Next_State <= 10'd160;
    end
    10'd160: begin // State 5: CU-> 
    Next_State <= 10'd161;
    end
    10'd161: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 162 --> 166
    10'd162: begin // State 5: CU-> 
    Next_State <= 10'd163;
    end
    10'd163: begin // State 5: CU-> 
    Next_State <= 10'd164;
    end
    10'd164: begin // State 5: CU-> 
    Next_State <= 10'd165;
    end
    10'd165: begin // State 5: CU-> 
    Next_State <= 10'd166;
    end
    10'd166: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 167 --> 171
    10'd167: begin // State 5: CU-> 
    Next_State <= 10'd168;
    end
    10'd168: begin // State 5: CU-> 
    Next_State <= 10'd169;
    end
    10'd169: begin // State 5: CU-> 
    Next_State <= 10'd170;
    end
    10'd170: begin // State 5: CU-> 
    Next_State <= 10'd171;
    end
    10'd171: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5:   172 --> 176
    10'd172: begin // State 5: CU-> 
    Next_State <= 10'd173;
    end
    10'd173: begin // State 5: CU-> 
    Next_State <= 10'd174;
    end
    10'd174: begin // State 5: CU-> 
    Next_State <= 10'd174;
    end
    10'd175: begin // State 5: CU-> 
    Next_State <= 10'd176;
    end
    10'd176: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 177 --> 180
    10'd177: begin // State 5: CU-> 
    Next_State <= 10'd178;
    end
    10'd178: begin // State 5: CU-> 
    Next_State <= 10'd179;
    end
    10'd179: begin // State 5: CU-> 
    Next_State <= 10'd180;
    end
    10'd180: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 181 --> 184
    10'd181: begin // State 5: CU-> 
    Next_State <= 10'd182;
    end
    10'd182: begin // State 5: CU-> 
    Next_State <= 10'd183;
    end
    10'd183: begin // State 5: CU-> 
    Next_State <= 10'd184;
    end
    10'd184: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 185 --> 189
    10'd185: begin // State 5: CU-> 
    Next_State <= 10'd186;
    end
    10'd186: begin // State 5: CU-> 
    Next_State <= 10'd187;
    end
    10'd187: begin // State 5: CU-> 
    Next_State <= 10'd188;
    end
    10'd188: begin // State 5: CU-> 
    Next_State <= 10'd189;
    end
    10'd189: begin
    Next_State <= 10'd1;
    end

    // States 5: 190 --> 194
    10'd190: begin // State 5: CU-> 
    Next_State <= 10'd191;
    end
    10'd191: begin // State 5: CU-> 
    Next_State <= 10'd192;
    end
    10'd192: begin // State 5: CU-> 
    Next_State <= 10'd193;
    end
    10'd193: begin // State 5: CU-> 
    Next_State <= 10'd194;
    end
    10'd194: begin
    Next_State <= 10'd1;
    end

    // States 5: 195 --> 199
    10'd195: begin // State 5: CU-> 
    Next_State <= 10'd196;
    end
    10'd196: begin // State 5: CU-> 
    Next_State <= 10'd197;
    end
    10'd197: begin // State 5: CU-> 
    Next_State <= 10'd198;
    end
    10'd198: begin // State 5: CU-> 
    Next_State <= 10'd199;
    end
    10'd199: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 200 --> 204
    10'd200: begin // State 5: CU-> 
    Next_State <= 10'd201;
    end
    10'd201: begin // State 5: CU-> 
    Next_State <= 10'd202;
    end
    10'd202: begin // State 5: CU-> 
    Next_State <= 10'd203;
    end
    10'd203: begin // State 5: CU-> 
    Next_State <= 10'd204;
    end
    10'd204: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 205 --> 208
    10'd205: begin // State 5: CU-> 
    Next_State <= 10'd206;
    end
    10'd206: begin // State 5: CU-> 
    Next_State <= 10'd207;
    end
    10'd207: begin // State 5: CU-> 
    Next_State <= 10'd208;
    end
    10'd208: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
 

    // States 4: 209 --> 212
    10'd209: begin // State 5: CU-> 
    Next_State <= 10'd210;
    end
    10'd210: begin // State 5: CU-> 
    Next_State <= 10'd111;
    end
    10'd211: begin // State 5: CU-> 
    Next_State <= 10'd212;
    end
    10'd212: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
 
    // States 5: 213 --> 217
    10'd213: begin // State 5: CU-> 
    Next_State <= 10'd214;
    end
    10'd214: begin // State 5: CU-> 
    Next_State <= 10'd215;
    end
    10'd215: begin // State 5: CU-> 
    Next_State <= 10'd216;
    end
    10'd216: begin // State 5: CU-> 
    Next_State <= 10'd217;
    end
    10'd217: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 218 --> 222
    10'd218: begin // State 5: CU-> 
    Next_State <= 10'd219;
    end
    10'd219: begin // State 5: CU-> 
    Next_State <= 10'd220;
    end
    10'd220: begin // State 5: CU-> 
    Next_State <= 10'd221;
    end
    10'd221: begin // State 5: CU-> 
    Next_State <= 10'd222;
    end
    10'd222: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 223 --> 227
    10'd223: begin // State 5: CU-> 
    Next_State <= 10'd224;
    end
    10'd224: begin // State 5: CU-> 
    Next_State <= 10'd225;
    end
    10'd225: begin // State 5: CU-> 
    Next_State <= 10'd226;
    end
    10'd226: begin // State 5: CU-> 
    Next_State <= 10'd227;
    end
    10'd227: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 228 --> 232
    10'd228: begin // State 5: CU-> 
    Next_State <= 10'd229;
    end
    10'd229: begin // State 5: CU-> 
    Next_State <= 10'd230;
    end
    10'd230: begin // State 5: CU-> 
    Next_State <= 10'd231;
    end
    10'd231: begin // State 5: CU-> 
    Next_State <= 10'd232;
    end
    10'd232: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 233 --> 236
    10'd233: begin // State 5: CU-> 
    Next_State <= 10'd234;
    end
    10'd234: begin // State 5: CU-> 
    Next_State <= 10'd235;
    end
    10'd235: begin // State 5: CU-> 
    Next_State <= 10'd236;
    end
    10'd236: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 237 --> 240
    10'd237: begin // State 5: CU-> 
    Next_State <= 10'd238;
    end
    10'd238: begin // State 5: CU-> 
    Next_State <= 10'd239;
    end
    10'd239: begin // State 5: CU-> 
    Next_State <= 10'd240;
    end
    10'd240: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 241 --> 245
    10'd241: begin // State 5: CU-> 
    Next_State <= 10'd242;
    end
    10'd242: begin // State 5: CU-> 
    Next_State <= 10'd243;
    end
    10'd243: begin // State 5: CU-> 
    Next_State <= 10'd244;
    end
    10'd244: begin // State 5: CU-> 
    Next_State <= 10'd245;
    end
    10'd245: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 246 --> 250
    10'd246: begin // State 5: CU-> 
    Next_State <= 10'd247;
    end
    10'd247: begin // State 5: CU-> 
    Next_State <= 10'd248;
    end
    10'd248: begin // State 5: CU-> 
    Next_State <= 10'd249;
    end
    10'd249: begin // State 5: CU-> 
    Next_State <= 10'd250;
    end
    10'd250: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 251 --> 255
    10'd251: begin // State 5: CU-> 
    Next_State <= 10'd252;
    end
    10'd252: begin // State 5: CU-> 
    Next_State <= 10'd253;
    end
    10'd253: begin // State 5: CU-> 
    Next_State <= 10'd254;
    end
    10'd254: begin // State 5: CU-> 
    Next_State <= 10'd255;
    end
    10'd255: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 256 --> 260
    10'd256: begin // State 5: CU-> 
    Next_State <= 10'd257;
    end
    10'd257: begin // State 5: CU-> 
    Next_State <= 10'd258;
    end
    10'd258: begin // State 5: CU-> 
    Next_State <= 10'd259;
    end
    10'd259: begin // State 5: CU-> 
    Next_State <= 10'd260;
    end
    10'd260: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 261 --> 264
    10'd261: begin // State 5: CU-> 
    Next_State <= 10'd262;
    end
    10'd262: begin // State 5: CU-> 
    Next_State <= 10'd263;
    end
    10'd263: begin // State 5: CU-> 
    Next_State <= 10'd264;
    end
    10'd264: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 265 --> 268
    10'd265: begin // State 5: CU-> 
    Next_State <= 10'd266;
    end
    10'd266: begin // State 5: CU-> 
    Next_State <= 10'd267;
    end
    10'd267: begin // State 5: CU-> 
    Next_State <= 10'd268;
    end
    10'd268: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 269 --> 273
    10'd269: begin // State 5: CU-> 
    Next_State <= 10'd270;
    end
    10'd270: begin // State 5: CU-> 
    Next_State <= 10'd271;
    end
    10'd271: begin // State 5: CU-> 
    Next_State <= 10'd272;
    end
    10'd272: begin // State 5: CU-> 
    Next_State <= 10'd273;
    end
    10'd273: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 274 --> 278
    10'd274: begin // State 5: CU-> 
    Next_State <= 10'd275;
    end
    10'd275: begin // State 5: CU-> 
    Next_State <= 10'd276;
    end
    10'd276: begin // State 5: CU-> 
    Next_State <= 10'd277;
    end
    10'd277: begin // State 5: CU-> 
    Next_State <= 10'd278;
    end
    10'd278: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 279 --> 283
    10'd279: begin // State 5: CU-> 
    Next_State <= 10'd280;
    end
    10'd280: begin // State 5: CU-> 
    Next_State <= 10'd281;
    end
    10'd281: begin // State 5: CU-> 
    Next_State <= 10'd282;
    end
    10'd282: begin // State 5: CU-> 
    Next_State <= 10'd283;
    end
    10'd283: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 284 --> 288
    10'd284: begin // State 5: CU-> 
    Next_State <= 10'd285;
    end
    10'd285: begin // State 5: CU-> 
    Next_State <= 10'd286;
    end
    10'd286: begin // State 5: CU-> 
    Next_State <= 10'd287;
    end
    10'd287: begin // State 5: CU-> 
    Next_State <= 10'd288;
    end
    10'd288: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 289 --> 292
    10'd289: begin // State 5: CU-> 
    Next_State <= 10'd290;
    end
    10'd290: begin // State 5: CU-> 
    Next_State <= 10'd291;
    end
    10'd291: begin // State 5: CU-> 
    Next_State <= 10'd292;
    end
    10'd292: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    
    // States 4: 293 --> 296
    10'd293: begin // State 5: CU-> 
    Next_State <= 10'd294;
    end
    10'd294: begin // State 5: CU-> 
    Next_State <= 10'd295;
    end
    10'd295: begin // State 5: CU-> 
    Next_State <= 10'd296;
    end
    10'd296: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 297 --> 301
    10'd297: begin // State 5: CU-> 
    Next_State <= 10'd298;
    end
    10'd298: begin // State 5: CU-> 
    Next_State <= 10'd299;
    end
    10'd299: begin // State 5: CU-> 
    Next_State <= 10'd300;
    end
    10'd300: begin // State 5: CU-> 
    Next_State <= 10'd301;
    end
    10'd301: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 302 --> 306
    10'd302: begin // State 5: CU-> 
    Next_State <= 10'd303;
    end
    10'd303: begin // State 5: CU-> 
    Next_State <= 10'd304;
    end
    10'd304: begin // State 5: CU-> 
    Next_State <= 10'd305;
    end
    10'd305: begin // State 5: CU-> 
    Next_State <= 10'd306;
    end
    10'd306: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 307 --> 311
    10'd307: begin // State 5: CU-> 
    Next_State <= 10'd308;
    end
    10'd308: begin // State 5: CU-> 
    Next_State <= 10'd309;
    end
    10'd309: begin // State 5: CU-> 
    Next_State <= 10'd310;
    end
    10'd310: begin // State 5: CU-> 
    Next_State <= 10'd311;
    end
    10'd311: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 312 --> 316
    10'd312: begin // State 5: CU-> 
    Next_State <= 10'd313;
    end
    10'd313: begin // State 5: CU-> 
    Next_State <= 10'd314;
    end
    10'd314: begin // State 5: CU-> 
    Next_State <= 10'd315;
    end
    10'd315: begin // State 5: CU-> 
    Next_State <= 10'd316;
    end
    10'd316: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 317 --> 320
    10'd317: begin // State 5: CU-> 
    Next_State <= 10'd318;
    end
    10'd318: begin // State 5: CU-> 
    Next_State <= 10'd319;
    end
    10'd319: begin // State 5: CU-> 
    Next_State <= 10'd320;
    end
    10'd320: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 321 --> 324
    10'd321: begin // State 5: CU-> 
    Next_State <= 10'd322;
    end
    10'd322: begin // State 5: CU-> 
    Next_State <= 10'd323;
    end
    10'd323: begin // State 5: CU-> 
    Next_State <= 10'd324;
    end
    10'd324: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 325 --> 329
    10'd325: begin // State 5: CU-> 
    Next_State <= 10'd326;
    end
    10'd326: begin // State 5: CU-> 
    Next_State <= 10'd327;
    end
    10'd327: begin // State 5: CU-> 
    Next_State <= 10'd328;
    end
    10'd328: begin // State 5: CU-> 
    Next_State <= 10'd329;
    end
    10'd329: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 330 --> 334
    10'd330: begin // State 5: CU-> 
    Next_State <= 10'd331;
    end
    10'd331: begin // State 5: CU-> 
    Next_State <= 10'd332;
    end
    10'd332: begin // State 5: CU-> 
    Next_State <= 10'd333;
    end
    10'd333: begin // State 5: CU-> 
    Next_State <= 10'd334;
    end
    10'd334: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 335 --> 339
    10'd335: begin // State 5: CU-> 
    Next_State <= 10'd336;
    end
    10'd336: begin // State 5: CU-> 
    Next_State <= 10'd337;
    end
    10'd337: begin // State 5: CU-> 
    Next_State <= 10'd338;
    end
    10'd338: begin // State 5: CU-> 
    Next_State <= 10'd339;
    end
    10'd339: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 340 --> 344
    10'd340: begin // State 5: CU-> 
    Next_State <= 10'd341;
    end
    10'd341: begin // State 5: CU-> 
    Next_State <= 10'd342;
    end
    10'd342: begin // State 5: CU-> 
    Next_State <= 10'd343;
    end
    10'd343: begin // State 5: CU-> 
    Next_State <= 10'd344;
    end
    10'd344: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 345 --> 348
    10'd345: begin // State 5: CU-> 
    Next_State <= 10'd346;
    end
    10'd346: begin // State 5: CU-> 
    Next_State <= 10'd347;
    end
    10'd347: begin // State 5: CU-> 
    Next_State <= 10'd348;
    end
    10'd348: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 349 --> 352
    10'd349: begin // State 5: CU-> 
    Next_State <= 10'd350;
    end
    10'd350: begin // State 5: CU-> 
    Next_State <= 10'd351;
    end
    10'd351: begin // State 5: CU-> 
    Next_State <= 10'd352;
    end
    10'd352: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 353 --> 357
    10'd353: begin // State 5: CU-> 
    Next_State <= 10'd354;
    end
    10'd354: begin // State 5: CU-> 
    Next_State <= 10'd355;
    end
    10'd355: begin // State 5: CU-> 
    Next_State <= 10'd356;
    end
    10'd356: begin // State 5: CU-> 
    Next_State <= 10'd357;
    end
    10'd357: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 358 --> 362
    10'd358: begin // State 5: CU-> 
    Next_State <= 10'd359;
    end
    10'd359: begin // State 5: CU-> 
    Next_State <= 10'd360;
    end
    10'd360: begin // State 5: CU-> 
    Next_State <= 10'd361;
    end
    10'd361: begin // State 5: CU-> 
    Next_State <= 10'd362;
    end
    10'd362: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 363 --> 367
    10'd363: begin // State 5: CU-> 
    Next_State <= 10'd364;
    end
    10'd364: begin // State 5: CU-> 
    Next_State <= 10'd365;
    end
    10'd365: begin // State 5: CU-> 
    Next_State <= 10'd366;
    end
    10'd366: begin // State 5: CU-> 
    Next_State <= 10'd367;
    end
    10'd367: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 368 --> 372
    10'd368: begin // State 5: CU-> 
    Next_State <= 10'd369;
    end
    10'd369: begin // State 5: CU-> 
    Next_State <= 10'd370;
    end
    10'd370: begin // State 5: CU-> 
    Next_State <= 10'd371;
    end
    10'd371: begin // State 5: CU-> 
    Next_State <= 10'd372;
    end
    10'd372: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 373 --> 376
    10'd373: begin // State 5: CU-> 
    Next_State <= 10'd374;
    end
    10'd374: begin // State 5: CU-> 
    Next_State <= 10'd375;
    end
    10'd375: begin // State 5: CU-> 
    Next_State <= 10'd376;
    end
    10'd376: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 377 --> 380
    10'd377: begin // State 5: CU-> 
    Next_State <= 10'd378;
    end
    10'd378: begin // State 5: CU-> 
    Next_State <= 10'd379;
    end
    10'd379: begin // State 5: CU-> 
    Next_State <= 10'd380;
    end
    10'd380: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 381 --> 385
    10'd381: begin // State 5: CU-> 
    Next_State <= 10'd382;
    end
    10'd382: begin // State 5: CU-> 
    Next_State <= 10'd383;
    end
    10'd383: begin // State 5: CU-> 
    Next_State <= 10'd384;
    end
    10'd384: begin // State 5: CU-> 
    Next_State <= 10'd385;
    end
    10'd385: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 386 --> 390
    10'd386: begin // State 5: CU-> 
    Next_State <= 10'd387;
    end
    10'd387: begin // State 5: CU-> 
    Next_State <= 10'd388;
    end
    10'd388: begin // State 5: CU-> 
    Next_State <= 10'd389;
    end
    10'd389: begin // State 5: CU-> 
    Next_State <= 10'd390;
    end
    10'd390: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 391 --> 395
    10'd391: begin // State 5: CU-> 
    Next_State <= 10'd392;
    end
    10'd392: begin // State 5: CU-> 
    Next_State <= 10'd393;
    end
    10'd393: begin // State 5: CU-> 
    Next_State <= 10'd394;
    end
    10'd394: begin // State 5: CU-> 
    Next_State <= 10'd395;
    end
    10'd395: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 396 --> 400
    10'd396: begin // State 5: CU-> 
    Next_State <= 10'd397;
    end
    10'd397: begin // State 5: CU-> 
    Next_State <= 10'd398;
    end
    10'd398: begin // State 5: CU-> 
    Next_State <= 10'd399;
    end
    10'd399: begin // State 5: CU-> 
    Next_State <= 10'd400;
    end
    10'd400: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 401 --> 404
    10'd401: begin // State 5: CU-> 
    Next_State <= 10'd402;
    end
    10'd402: begin // State 5: CU-> 
    Next_State <= 10'd403;
    end
    10'd403: begin // State 5: CU-> 
    Next_State <= 10'd404;
    end
    10'd404: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 405 --> 408
    10'd405: begin // State 5: CU-> 
    Next_State <= 10'd406;
    end
    10'd406: begin // State 5: CU-> 
    Next_State <= 10'd407;
    end
    10'd407: begin // State 5: CU-> 
    Next_State <= 10'd408;
    end
    10'd408: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 409 --> 413
    10'd409: begin // State 5: CU-> 
    Next_State <= 10'd410;
    end
    10'd410: begin // State 5: CU-> 
    Next_State <= 10'd411;
    end
    10'd411: begin // State 5: CU-> 
    Next_State <= 10'd412;
    end
    10'd412: begin // State 5: CU-> 
    Next_State <= 10'd413;
    end
    10'd413: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 414 --> 418
    10'd414: begin // State 5: CU-> 
    Next_State <= 10'd415;
    end
    10'd415: begin // State 5: CU-> 
    Next_State <= 10'd416;
    end
    10'd416: begin // State 5: CU-> 
    Next_State <= 10'd417;
    end
    10'd417: begin // State 5: CU-> 
    Next_State <= 10'd418;
    end
    10'd418: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 419 --> 423
    10'd419: begin // State 5: CU-> 
    Next_State <= 10'd420;
    end
    10'd420: begin // State 5: CU-> 
    Next_State <= 10'd421;
    end
    10'd421: begin // State 5: CU-> 
    Next_State <= 10'd422;
    end
    10'd422: begin // State 5: CU-> 
    Next_State <= 10'd423;
    end
    10'd423: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 424 --> 428
    10'd424: begin // State 5: CU-> 
    Next_State <= 10'd425;
    end
    10'd425: begin // State 5: CU-> 
    Next_State <= 10'd426;
    end
    10'd426: begin // State 5: CU-> 
    Next_State <= 10'd427;
    end
    10'd427: begin // State 5: CU-> 
    Next_State <= 10'd428;
    end
    10'd428: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 429 --> 432
    10'd429: begin // State 5: CU-> 
    Next_State <= 10'd430;
    end
    10'd430: begin // State 5: CU-> 
    Next_State <= 10'd431;
    end
    10'd431: begin // State 5: CU-> 
    Next_State <= 10'd432;
    end
    10'd432: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4:  433 --> 436
    10'd433: begin // State 5: CU-> 
    Next_State <= 10'd434;
    end
    10'd434: begin // State 5: CU-> 
    Next_State <= 10'd435;
    end
    10'd435: begin // State 5: CU-> 
    Next_State <= 10'd436;
    end
    10'd436: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 437 --> 441
    10'd437: begin // State 5: CU-> 
    Next_State <= 10'd438;
    end
    10'd438: begin // State 5: CU-> 
    Next_State <= 10'd439;
    end
    10'd439: begin // State 5: CU-> 
    Next_State <= 10'd440;
    end
    10'd440: begin // State 5: CU-> 
    Next_State <= 10'd441;
    end
    10'd441: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 442 --> 446
    10'd442: begin // State 5: CU-> 
    Next_State <= 10'd443;
    end
    10'd443: begin // State 5: CU-> 
    Next_State <= 10'd444;
    end
    10'd444: begin // State 5: CU-> 
    Next_State <= 10'd445;
    end
    10'd445: begin // State 5: CU-> 
    Next_State <= 10'd446;
    end
    10'd446: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    

    // States 5: 447 --> 451
    10'd447: begin // State 5: CU-> 
    Next_State <= 10'd448;
    end
    10'd448: begin // State 5: CU-> 
    Next_State <= 10'd449;
    end
    10'd449: begin // State 5: CU-> 
    Next_State <= 10'd450;
    end
    10'd450: begin // State 5: CU-> 
    Next_State <= 10'd451;
    end
    10'd451: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 452 --> 456
    10'd452: begin // State 5: CU-> 
    Next_State <= 10'd453;
    end
    10'd453: begin // State 5: CU-> 
    Next_State <= 10'd454;
    end
    10'd454: begin // State 5: CU-> 
    Next_State <= 10'd455;
    end
    10'd455: begin // State 5: CU-> 
    Next_State <= 10'd456;
    end
    10'd456: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 457 --> 460
    10'd457: begin // State 5: CU-> 
    Next_State <= 10'd458;
    end
    10'd458: begin // State 5: CU-> 
    Next_State <= 10'd459;
    end
    10'd459: begin // State 5: CU-> 
    Next_State <= 10'd460;
    end
    10'd460: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 461 --> 464
    10'd461: begin // State 5: CU-> 
    Next_State <= 10'd462;
    end
    10'd462: begin // State 5: CU-> 
    Next_State <= 10'd463;
    end
    10'd463: begin // State 5: CU-> 
    Next_State <= 10'd464;
    end
    10'd464: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 465 --> 469
    10'd465: begin // State 5: CU-> 
    Next_State <= 10'd466;
    end
    10'd466: begin // State 5: CU-> 
    Next_State <= 10'd467;
    end
    10'd467: begin // State 5: CU-> 
    Next_State <= 10'd468;
    end
    10'd468: begin // State 5: CU-> 
    Next_State <= 10'd469;
    end
    10'd469: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 470 --> 474
    10'd470: begin // State 5: CU-> 
    Next_State <= 10'd471;
    end
    10'd471: begin // State 5: CU-> 
    Next_State <= 10'd472;
    end
    10'd472: begin // State 5: CU-> 
    Next_State <= 10'd473;
    end
    10'd473: begin // State 5: CU-> 
    Next_State <= 10'd474;
    end
    10'd474: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 475 --> 479
    10'd475: begin // State 5: CU-> 
    Next_State <= 10'd476;
    end
    10'd476: begin // State 5: CU-> 
    Next_State <= 10'd477;
    end
    10'd477: begin // State 5: CU-> 
    Next_State <= 10'd478;
    end
    10'd478: begin // State 5: CU-> 
    Next_State <= 10'd479;
    end
    10'd479: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 480 --> 484
    10'd480: begin // State 5: CU-> 
    Next_State <= 10'd481;
    end
    10'd481: begin // State 5: CU-> 
    Next_State <= 10'd482;
    end
    10'd482: begin // State 5: CU-> 
    Next_State <= 10'd483;
    end
     10'd483: begin // State 5: CU-> 
    Next_State <= 10'd484;
    end
    10'd484: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 485 --> 488
    10'd485: begin // State 5: CU-> 
    Next_State <= 10'd486;
    end
    10'd486: begin // State 5: CU-> 
    Next_State <= 10'd487;
    end
    10'd487: begin // State 5: CU-> 
    Next_State <= 10'd488;
    end
    10'd488: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 4: 489 --> 492
    10'd489: begin // State 5: CU-> 
    Next_State <= 10'd490;
    end
    10'd490: begin // State 5: CU-> 
    Next_State <= 10'd491;
    end
    10'd491: begin // State 5: CU-> 
    Next_State <= 10'd492;
    end
    10'd492: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 493 --> 497
    10'd493: begin // State 5: CU-> 
    Next_State <= 10'd494;
    end
    10'd494: begin // State 5: CU-> 
    Next_State <= 10'd495;
    end
    10'd495: begin // State 5: CU-> 
    Next_State <= 10'd496;
    end
    10'd496: begin // State 5: CU-> 
    Next_State <= 10'd497;
    end
    10'd497: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 498 --> 502
    10'd498: begin // State 5: CU-> 
    Next_State <= 10'd499;
    end
    10'd499: begin // State 5: CU-> 
    Next_State <= 10'd500;
    end
    10'd500: begin // State 5: CU-> 
    Next_State <= 10'd501;
    end
    10'd501: begin // State 5: CU-> 
    Next_State <= 10'd502;
    end
    10'd502: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 503 --> 507
    10'd503: begin // State 5: CU-> 
    Next_State <= 10'd504;
    end
    10'd504: begin // State 5: CU-> 
    Next_State <= 10'd505;
    end
    10'd505: begin // State 5: CU-> 
    Next_State <= 10'd506;
    end
    10'd506: begin // State 5: CU-> 
    Next_State <= 10'd507;
    end
    10'd507: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end

    // States 5: 508 --> 512
    10'd508: begin // State 5: CU-> 
    Next_State <= 10'd509;
    end
    10'd509: begin // State 5: CU-> 
    Next_State <= 10'd510;
    end
    10'd510: begin // State 5: CU-> 
    Next_State <= 10'd511;
    end
    10'd511: begin // State 5: CU-> 
    Next_State <= 10'd512;
    end
    10'd512: begin // State 5: CU-> 
    Next_State <= 10'd1;
    end
    10'd513: begin // load multiple LDMIA
    Next_State <= 10'd514;
    MLR <= lista[index];
    end
    10'd514: begin

    Next_State <= 10'd515;
    end
    10'd515: begin
    
    Next_State <= 10'd516;
    end
    10'd516: begin
    if(MOC) begin
    index = index + 1;
    Next_State <= 10'd517;
    end // not MOC
      else Next_State <= 10'd516;
    end
    10'd517: begin
    if(index >= counter) begin
     Next_State <= 10'd1;
    end
    else begin
      Next_State <= 10'd513;
     
    end
      
    end // end 517
    10'd518: begin // STRIA
    $display("Counter:{%d}", counter2);
     MLR <= lista2[index2];
      Next_State <= 10'd519;
     
    end
    10'd519: begin
     MLR <= lista2[index2];
      Next_State <= 10'd520;
      // $display("index2: {%d}", index2);
    end
    10'd520: begin
   // $display("index2: {%d}", index2);
     MLR <= lista2[index2];
     Next_State <= 10'd521;
      
    end
    10'd521: begin
    //$display("index2.1: {%d}", index2);
      Next_State <= 10'd522;
    end
    10'd522: begin
    //$display("index2Before: {%d}", index2);
    if(MOC)begin
      index2 = index2 + 1;
    //$display("index2After: {%d}", index2);
      if(index2 >= counter2)begin
        Next_State <= 10'd1;
      end
      else begin 
       // $display("index2: {%d}",index2);
        Next_State <= 10'd518;
      end
    end// end MOC
      else Next_State <= 10'd522;
    end
    10'd523: begin 
    Next_State <= 10'd1;
    end
  endcase
end

endmodule