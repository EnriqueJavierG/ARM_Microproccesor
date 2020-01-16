module ram256x32(output reg [31:0]  DataOut, output reg MOC, input
Enable, input ReadWrite, input [31:0] Address, input [31:0] DataIn, 
input [31:0] IR, input MOV, input type);
reg [7:0] Mem[1023:0];
reg marroncito;
 
//RAM EDITADO

//Verificar MOV
always @ (MOV,Enable, ReadWrite,type) begin //Enable, ReadWrite
    // zero in MOC exit
    
    MOC <=1'b0; 
    if(MOV)begin
        MOC <=1'b1; // 1 until finished
        if(type) begin
            DataOut[7:0] <= Mem[Address + 3];
            DataOut[15:8] <= Mem[Address + 2];
            DataOut[23:16] <= Mem[Address + 1];
            DataOut[31:24] <= Mem[Address + 0];
        end
        //----------------------------------------------------------------------------------------
        else begin
        //$display("Read Write = %b",ReadWrite);
        if(ReadWrite)begin 
         
        //Verificar si quiere hacer un load
        // [7-0][15-8][23-16][31-24] <----- big endian
        //si quiero leer hago
         // dataout[31:24] = Mem[address + 3]
         // dataout[23:16] = Mem[address + 2]
         // dataout[15:8 ] = Mem[address + 1]
         // dataout[7:0  ] = Mem[address + 0]
         // verify if possible to be in addressing modee 3, load/store or addresing mode 2
        if(!IR[27:25] || IR[27:25] == 3'b011 ||IR[27:25] == 3'b010) begin //cierra
            case(IR[27:25])
                3'b000: begin //dataprocessing or addresing mode 3 //cierra
                    if(IR[7] && IR[4]) begin //addresing mode 3 //cierra
                        //Bit 6: S, Bit 5: H
                        case(IR[6:5])
                            2'b00: begin // byte
                         
                              DataOut[7:0] <= Mem[Address];
                              DataOut[15:8] <= 8'b00000000;
                              DataOut[23:16] <= 8'b00000000;
                              DataOut[31:24] <= 8'b00000000;
                             
                            end
                            2'b01: begin //Half word
                            
                              DataOut[7:0] <= Mem[Address + 1]; // ????? idk
                              DataOut[15:8] <= Mem[Address + 0];
                              DataOut[23:16] <= 8'b00000000;
                              DataOut[31:24] <= 8'b00000000;
                             
                             end
                            2'b10: begin
                                if(IR[20]) begin // byte
                                
                                    DataOut[7:0] <= Mem[Address + 0];
                                    DataOut[15:8] <= 8'b00000000;
                                    DataOut[23:16] <= 8'b00000000;
                                    DataOut[31:24] <= 8'b00000000;
                                    
                                end // end byte
                                else begin // half word
                               
                                    DataOut[7:0] <= Mem[Address + 1]; // ?????
                                    DataOut[15:8] <= Mem[Address + 0];
                                    DataOut[23:16] <= 8'b00000000;
                                    DataOut[31:24] <= 8'b00000000;
                                    
                                end//end halfword
                             end
                            2'b11: begin // entra aqui
                                if(IR[20]) begin // halfword signed
                                
                                    DataOut[7:0] <= Mem[Address + 1];
                                    DataOut[15:8] <= Mem[Address + 0]; // ????
                                    DataOut[23:16] <= 8'b11111111;
                                    DataOut[31:24] <= 8'b11111111;
                                    
                                end
                                else begin // double word
                                
                                 end
                             end
                        endcase
                    end// end addressing mode 3
                    else begin // data proccesing
                        DataOut[7:0] <= Mem[Address + 3];
                        DataOut[15:8] <= Mem[Address + 2];
                        DataOut[23:16] <= Mem[Address + 1];
                        DataOut[31:24] <= Mem[Address + 0]; // ??????
                     end
                end // end addresing mode 3

                3'b011: begin //load y stores
                    //Bit 6: S, Bit 5: H
                        case(IR[6:5])//Aqui
                            2'b00: begin // byte // aqui esta pasando algo raro
                              
                              DataOut[7:0] <= Mem[Address]; 
                              DataOut[15:8] <= 8'b00000000;
                              DataOut[23:16] <= 8'b00000000;
                              DataOut[31:24] <= 8'b00000000;
                             
                            end
                            2'b01: begin //Half word
                                $display("Aqui tambein");
                              DataOut[7:0] <= Mem[Address + 1];
                              DataOut[15:8] <= Mem[Address + 0]; // ???
                              DataOut[23:16] <= 8'b00000000;
                              DataOut[31:24] <= 8'b00000000;
                              
                             end
                            2'b10: begin
                                if(IR[20]) begin // byte
                                
                                    DataOut[7:0] <= Mem[Address + 0];
                                    DataOut[15:8] <= 8'b00000000;
                                    DataOut[23:16] <= 8'b00000000;
                                    DataOut[31:24] <= 8'b00000000;
                                    
                                end // end byte
                                else begin // half word
                                    $display("Aqui estoy wooooo");
                                    DataOut[7:0] <= Mem[Address + 1];
                                    DataOut[15:8] <= Mem[Address + 0]; //?????
                                    DataOut[23:16] <= 8'b00000000;
                                    DataOut[31:24] <= 8'b00000000;
                                   
                                end//end halfword
                             end
                            2'b11: begin
                                if(IR[20]) begin // halfword
                             
                                    DataOut[7:0] <= Mem[Address + 1];
                                    DataOut[15:8] <= Mem[Address + 0]; // ?????
                                    DataOut[23:16] <= 8'b00000000;
                                    DataOut[31:24] <= 8'b00000000;
                                    
                                end
                                else begin // double word store
                                
                                 end
                             end
                        endcase
                end// end IR[27:25] = 011

                3'b010: begin //addressing mode 2
                    if(IR[22])begin //byte
                   
                        DataOut[7:0] <= Mem[Address + 0];
                        DataOut[15:8] <= 8'b00000000;
                        DataOut[23:16] <= 8'b00000000;
                        DataOut[31:24] <= 8'b00000000;
                      
                    end
                    else begin // word
                        DataOut[7:0] <= Mem[Address + 3];
                        DataOut[15:8] <= Mem[Address + 2];
                        DataOut[23:16] <= Mem[Address + 1]; // ????
                        DataOut[31:24] <= Mem[Address + 0];
                    end
                
                end // addressing mode 2 

                default: begin // otra cosa
                    DataOut[7:0] <= Mem[Address + 3];
                    DataOut[15:8] <= Mem[Address + 2]; // ?????
                    DataOut[23:16] <= Mem[Address + 1];
                    DataOut[31:24] <= Mem[Address + 0];
                  
                end


            endcase
        end// end addressing mode 3, load/store y addresing mode 2
        
        else begin // NO estoy pidiendo load 
            //fetch
            DataOut[7:0] <= Mem[Address + 3];
            DataOut[15:8] <= Mem[Address + 2];
            DataOut[23:16] <= Mem[Address + 1]; // ?????
            DataOut[31:24] <= Mem[Address + 0];
         end    
        //verificar si quiere hacer un store
         // [7-0][15-8][23-16][31-24] <----- big endian
         //si quiero leer hago
         // Mem[address + 3] = datain [31:24] 
         // Mem[address + 2] = datain [23:16] 
         // Mem[address + 1] = datain [15:8 ] 
         // Mem[address + 0] = datain [7:0  ] 
        
        end//end Read
        else begin // start write
        $display("Entering to store instruction");
      if(!IR[27:25] || IR[27:25] == 3'b011 ||IR[27:25] == 3'b010) begin
            case(IR[27:25])
                3'b000: begin //dataprocessing or addresing mode 3
                    if(IR[7] && IR[4]) begin //addresing mode 3
                        //Bit 6: S, Bit 5: H, Bit 20: L 
                        if(IR[20] && IR[5]) begin // IR[20] && IR[5]
                            if(IR[6]) begin // double word
                              $display("Aqui 1");
                            end
                            else begin // half word
                            $display("Aqui 2");
                                Mem[Address + 0] = DataIn[15:8]; // ?????
                                Mem[Address + 1] = DataIn[7:0];
                            end
                        end
                    end
                    else begin // data proccesing
                    $display("Aqui 3");
                     //Mem[Address + 0] = DataIn[7:0];
                    //$display("No hare store aunque quieras");
                        // DataOut[7:0] <= Mem[address + 0];
                        // DataOut[15:8] <= Mem[address + 1];
                        // DataOut[23:16] <= Mem[address + 2];
                        // DataOut[31:24] <= Mem[address + 3];
                     end
                end // end addresing mode 3

                3'b011: begin //load y stores
                    //Bit 6: S, Bit 5: H
                      if(IR[20] && IR[5]) begin // IR[20] && IR[5]
                            if(IR[6]) begin // double word
                            $display("Aqui 4");
                                Mem[Address + 0] = DataIn[31:24];
                                Mem[Address + 1] = DataIn[23:16];
                                Mem[Address + 2] = DataIn[15:8];
                                Mem[Address + 3] = DataIn[7:0];
                            end
                            else begin // half word
                            $display("Aqui 5");
                                Mem[Address + 0] = DataIn[15:8];
                                Mem[Address + 1] = DataIn[7:0];
                             //   Mem[Address + 2] = DataIn[15:8];
                              //  Mem[Address + 3] = DataIn[7:0];
                            end
                        end  
                end// end IR[27:25] = 011

                3'b010: begin //addressing mode 2
                   if(!IR[20]) begin // store
                    if(IR[22]) begin // byte
                    $display("Aqui 6");
                      Mem[Address + 0] = DataIn[7:0];
                    end
                    else begin // word
                    $display("Aqui 7");
                        Mem[Address + 0] = DataIn[31:24];
                        Mem[Address + 1] = DataIn[23:16];
                        Mem[Address + 2] = DataIn[15:8];
                        Mem[Address + 3] = DataIn[7:0];
                    end
                   end
                
                end// end addressing mode 2

                default: begin // otra cosa
                    $display("Aqui 8");
                    Mem[Address + 0] = DataIn[31:24];
                    Mem[Address + 1] = DataIn[23:16];
                    Mem[Address + 2] = DataIn[15:8];
                    Mem[Address + 3] = DataIn[7:0];
                end


            endcase
        end// end addressing mode 3, load/store y addresing mode 2
        else begin //addressing mode 4
            $display("Aqui 9");
            Mem[Address + 0] = DataIn[31:24];
            Mem[Address + 1] = DataIn[23:16];
            Mem[Address + 2] = DataIn[15:8];
            Mem[Address + 3] = DataIn[7:0];
        end // addressing mode 4
        end // end write 
        end//termina el else <--
    end// RAM activado termina MOV
    end//end always

endmodule// end ram