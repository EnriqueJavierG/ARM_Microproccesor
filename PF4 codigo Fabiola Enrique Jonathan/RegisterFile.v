//Autor: Enrique J. Gonzalez Mendez
//Requisito de ICOM4215
//Prof. N. Rodriguez
//DESCRIPCION:
// El programam correra por las primeras 600 unidades de tiempo
//guardando valores a los registros y luego ejecutara el leer todos los registros
//seguido de un cambio al registro 10 y una lectura al mismo
//==================================================================================

// module testRegister;
// parameter sim_time = 800;
// wire [31:0] out0, out1;//output of reads of register file
// reg [3:0]bdin;//inputs to binary decoder 
// reg rfld;//load
// reg clk;//clock
// reg [31:0] pc;//32 bits of info
// //mux select
// reg [3:0] ma;
// reg [3:0] mb;

// register_file file(out1,out0,pc,clk,rfld,bdin,ma,mb);
// //simulation time
// initial #sim_time $finish;

// initial begin
//   pc <= 4;
//   repeat(15) #40 pc <= pc + 4;
// end
// //manejar clock
// initial begin
//   clk <= 1'b1;
//   repeat(10) #10 clk = ~clk;
// end
// //manejar load
// initial begin
//   rfld <= 1'b0;
//   repeat (5) #20 rfld <= ~rfld;
// end
// //manejar binary decoder
// initial begin
//   bdin <= 4'b0000;
//   repeat(16) #40 bdin <= bdin + 4'b0001;
// end 
// //manejar muxA
// initial begin
//   ma <= 4'b0000;
//   #600 repeat(7) #20 ma <= ma +4'b0001;
// end
// //manejar muxB
// initial begin
//   mb <= 4'b1000;
//   #600 repeat(7) #20 mb <= mb +4'b0001;
// end
// //Load a registro 10
// initial begin
//   #750 bdin <= 10;
// end
// //Nuevo valor para registro 10
// initial begin
// #750 pc <=99;
// end
// //Seleccionar registro 10
// initial begin
//   #750 begin 
//   ma <= 10;
//   //mb <=10;
//   end
// end
// initial begin
//   $display("     OutputA         OutputB     PC   Clock  Load    MuxA    MuxB                Time");
//   $monitor("%d, %d, %d,     %b,     %b,     R%d,     R%d,  %d",out0,out1,pc,clk,rfld,ma,mb,$time);
// end
// endmodule

//Register file 
 module register_file(output wire [31:0] out1, output wire [31:0] out0, input [31:0] pc, input clk,rfld, input [3:0] bd, input[3:0]ma,input[3:0]mb);
  //Wires for binary decoder to register
  wire wbd0, wbd1, wbd2, wbd3,wbd4,wbd5,wbd6,wbd7,wbd8,wbd9,wbd10,wbd11,wbd12,wbd13,wbd14,wbd15;
  //Wires for register to multiplexers
  wire [31:0] wr0,wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15;
  
  //wires for multiplexers to exit in module arguments
  //binary decoder
  binary_decoder binde(wbd0, wbd1, wbd2, wbd3,wbd4,wbd5,wbd6,wbd7,wbd8,wbd9,wbd10,wbd11,wbd12,wbd13,wbd14,wbd15,rfld,bd);
  //Connect binary decoder to every register
  register r0(wr0,clk,wbd0,pc);//wr0
  register r1(wr1,clk,wbd1,pc);//wr1
  register r2(wr2,clk,wbd2,pc);
  register r3(wr3,clk,wbd3,pc);
  register r4(wr4,clk,wbd4,pc);
  register r5(wr5,clk,wbd5,pc);
  register r6(wr6,clk,wbd6,pc);
  register r7(wr7,clk,wbd7,pc);
  register r8(wr8,clk,wbd8,pc);
  register r9(wr9,clk,wbd9,pc); 
  register r10(wr10,clk,wbd10,pc);
  register r11(wr11,clk,wbd11,pc);
  register r12(wr12,clk,wbd12,pc);
  register r13(wr13,clk,wbd13,pc);
  register r14(wr14,clk,wbd14,pc); // link register
  register r15(wr15,clk,wbd15,pc);//wr15 // program counter
  //Connect registers to multiplexers
  mux_16_1 muxa(out0,ma,wr0,wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15);
  mux_16_1 muxb(out1,mb,wr0,wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15);
  // initial begin
  //   $display("wr0       wr1       wr2       wr3       wr4        wr5       wr6       wr7       wr8       wr9       wr10          wr11        wr12        wr13        wr14        wr15 ");
  //   $monitor("%b %b %b %b %b %b %b %b %b %b %b %b %b %b %b"
  // ,wr0,wr1,wr2,wr3,wr4,wr5,wr6,wr7,wr8,wr9,wr10,wr11,wr12,wr13,wr14,wr15);
  // end

  // initial begin
    
  //   $monitor("%d", wr15);
  
  // end
  
endmodule

//Test module: Works===========================================================================
// module test_mux;
// parameter sim_time = 25;
// wire [31:0] exit;
// reg [3:0] sel;
//   reg [31:0] in0;
//   reg [31:0] in1;
//   reg [31:0] in2;
//   reg [31:0] in3;
//   reg [31:0] in4;
//   reg [31:0] in5;
//   reg [31:0] in6;
//   reg [31:0] in7;
//   reg [31:0] in8;
//   reg [31:0] in9;
//   reg [31:0] in10;
//   reg [31:0] in11;
//   reg [31:0] in12;
//   reg [31:0] in13;
//   reg [31:0] in14;
//   reg [31:0] in15;
  

// mux_16_1 mux(exit,sel,in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15);

// initial #sim_time $finish;
//   initial begin
//     $display(" exit--------------------------------->Select----------------------->time");
//     $monitor(" %b ----> %b ----> %d",exit,sel,$time);
//   end

//   initial begin
//     sel = 4'b0000;
//     repeat(4) #5 sel = sel + 4'b0001;
//   end

//   initial begin
//     in0 = 32'b00000000000000000000000000000000;
//     in1 = 32'b00000000000000000000000000000001;
//     in2 = 32'b00000000000000000000000000000010;
//     in3 = 32'b00000000000000000000000000000011;
//     in4 = 32'b00000000000000000000111100001111;
//   end
// endmodule

module mux_16_1(output reg [31:0] exit,input [3:0] sel ,input [31:0] in0, input [31:0] in1, input [31:0] in2,input [31:0] in3,input [31:0] in4,input [31:0] in5,input [31:0] in6,
                input [31:0] in7, input [31:0] in8, input [31:0] in9,input [31:0] in10, input [31:0] in11,input [31:0] in12,input [31:0] in13,input [31:0] in14,input [31:0] in15);

always @ (*)
begin
 case (sel)
  4'b0000: exit <= in0;
  4'b0001: exit <= in1;
  4'b0010: exit <= in2;
  4'b0011: exit <= in3;
  4'b0100: exit <= in4;
  4'b0101: exit <= in5;
  4'b0110: exit <= in6;
  4'b0111: exit <= in7;
  4'b1000: exit <= in8;
  4'b1001: exit <= in9;
  4'b1010: exit <= in10;
  4'b1011: exit <= in11;
  4'b1100: exit <= in12;
  4'b1101: exit <= in13;
  4'b1110: exit <= in14;
  4'b1111: exit <= in15;
  //default: exit <= 32'b00000000000000000000000000000000;
 endcase
end
endmodule

//Test Module:Works=======================================================================
// module test_decoder;
//   parameter sim_time = 100;
//   wire ex0,ex1,ex2,ex3,ex4,ex5,ex6,ex7,ex8,ex9,ex10,ex11,ex12,ex13,ex14,ex15;
//   reg ld = 1;
//   reg [3:0]select;
// binary_decoder bd(ex0,ex1,ex2,ex3,ex4,ex5,ex6,ex7,ex8,ex9,ex10,ex11,ex12,ex13,ex14,ex15,ld,select);
//   initial #sim_time $finish;
//   initial begin
//     $display(" exit0------>exit1------>exit2------>exit3------>select------>load------>Time");
//     $monitor(" %b------>%b------>%b------>%b------>%b------>%b------>%d",ex0,ex1,ex2,ex3,select,ld,$time);
//   end
//   initial begin
//     select = 4'b0000;
//     repeat(3) #5 select = select + 4'b0001;
//   end
//   // initial begin
//   //   repeat (3) #4 ld = ~ld;
//   // end
// endmodule


module binary_decoder(output reg ex0,ex1,ex2,ex3,ex4,ex5,ex6,ex7,ex8,ex9,ex10,ex11,ex12,ex13,ex14,ex15, input ld, input [3:0]select);
  always @ (ld,select)
  begin
    if(!ld)
      begin 
        ex0 <= 0;
        ex1 <= 0;
        ex2 <= 0;
        ex3 <= 0;
        ex4 <= 0;
        ex5 <= 0;
        ex6 <= 0;
        ex7 <= 0;
        ex8 <= 0;
        ex9 <= 0;
        ex10 <= 0;
        ex11 <= 0;
        ex12 <= 0;
        ex13 <= 0;
        ex14 <= 0;
        ex15 <= 0;
      end
      else 
        begin
          //reset all values to 0 before choosing another register
          ex0 <= 0;
          ex1 <= 0;
          ex2 <= 0;
          ex3 <= 0;
          ex4 <= 0;
          ex5 <= 0;
          ex6 <= 0;
          ex7 <= 0;
          ex8 <= 0;
          ex9 <= 0;
          ex10 <= 0;
          ex11 <= 0;
          ex12 <= 0;
          ex13 <= 0;
          ex14 <= 0;
          ex15 <= 0;
          //output that selects register to load data
          case(select)
            4'b0000: ex0 <= 1'b1;
            4'b0001: ex1 <= 1'b1;
            4'b0010: ex2 <= 1'b1;
            4'b0011: ex3 <= 1'b1;
            4'b0100: ex4 <= 1'b1;
            4'b0101: ex5 <= 1'b1;
            4'b0110: ex6 <= 1'b1;
            4'b0111: ex7 <= 1'b1;
            4'b1000: ex8 <= 1'b1;
            4'b1001: ex9 <= 1'b1;
            4'b1010: ex10 <= 1'b1;
            4'b1011: ex11 <= 1'b1;
            4'b1100: ex12 <= 1'b1;
            4'b1101: ex13 <= 1'b1;
            4'b1110: ex14 <= 1'b1;
            4'b1111: ex15 <= 1'b1;
          endcase
        end
      end
endmodule

//Testing purposes 
module binary_decoder_2x1(output reg ex0,ex1,input ld, input select);
  always @ (ld,select)
  begin
    if(!ld)
      begin 
        ex0 <= 0;
        ex1 <= 0;
      end
      else 
        begin
          //reset all values to 0 before choosing another register
          ex0 <= 0;
          ex1 <= 0;

          //output that selects register to load data
          case(select)
            1'b0: ex0 <= 1'b1;
            1'b1: ex1 <= 1'b1;
          endcase
        end
      end
endmodule

//Test module: Works======
// module test_register;
// parameter sim_time = 100;
// wire [31:0] exit;
// reg clock;
// reg load;
// wire wire0;
// reg [31:0] in;
// wire [31:0] exit1;
// wire wire1;
// reg sel;

// binary_decoder_2x1 bin(wire0,wire1,load,sel);
// register rt1(exit,clock,wire0,in);
// register rt2(exit1,clock,wire1,in);


// initial #sim_time $finish;

// initial begin
//   clock <= 1'b1;
//   repeat (10) #10 clock <= ~clock;
  
// end

// initial begin
// load <= 1'b0;
// repeat(5) #20 load <= ~load;
// end

// initial begin
//  sel <= 1'b0;
//  repeat(1) #50 sel <= 1'b1;  
// end

// initial begin
//   in = 32'b00000000000000000000000000000011;
//   #45 in <= in + 32'b00000000000000000000000000000011;
// end
// initial begin
//   $monitor("register0->%b------->register1->%b------->clock->%b------->load->%b %d",exit,exit1, clock, load,$time);
// end
// // initial begin
// // $dumpfile("test.vcd");
// // $dumpvars;
// // end
// endmodule

//Registro sin clear
module register(output reg [31:0] Q, input clock,input load ,input [31:0] in );
initial Q <= 32'd0;
  always @ (posedge clock)//, posedge load
   if(load) Q <= in; //32'b0
endmodule