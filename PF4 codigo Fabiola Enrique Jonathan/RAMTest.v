`include "RAM.v"
module RAMTester();

// reg[0:7] data;              reg Enable, ReadWrite;  	reg[0:31] DataIn;
// reg[0:31] Address; 	    	wire reg[0:31] DataOut;         reg MOV;					
// wire MOC;			        reg [0:31] IR;

reg[7:0] data;              reg Enable, ReadWrite;  	reg[31:0] DataIn;
reg[31:0] Address; 	    	wire reg[31:0] DataOut;         reg MOV;					
wire MOC;			        reg [31:0] IR;    reg [31:0] next; reg [31:0]counter ;
integer fi,code,i;
ram256x32 ram1(DataOut, MOC, Enable, ReadWrite, Address,DataIn, IR, MOV);
initial begin
    //IR <= 32'b11100101010101100101000000010100;
    //Enable = 1'b0;
    //MOV <= 1'b1;
    fi = $fopen("testcode_arm1.txt","r");
    Address = 32'd0;
    counter = 32'd3;
   next = counter;
    while (!$feof(fi)) begin
    
    code = $fscanf(fi,"%b",data);
    ram1.Mem[next] = data;
    next = next - 1;
    if(next < counter - 3) begin
      counter = counter + 4;
      next = counter;
      end
    else
      ram1.Mem[next] = data;
    end
    $fclose(fi);

end
//RAM TEST -----------------------------------------------------------------------------------------
// initial
// begin
//     for(i = 0; i < 60; i = i + 1)
//     begin
//         #1;
//         Address = i;
//         $display("Address = %d , Memory = %b", Address,ram1.Mem[i], $time);
//     end
// end
  
  initial begin
  MOV <= 1'b1;
  ReadWrite <= 1'b1;
  Enable <= 1'b1;
  Address <= 32'd40;
  IR[31:0] <= 32'b11100111110100010010000000000000;
  end

  initial begin
    $monitor("Dataout: {%b}, IR[27-25]: {%b}\n",DataOut[31:0], IR[27:25]);

  end


endmodule // RAMTester