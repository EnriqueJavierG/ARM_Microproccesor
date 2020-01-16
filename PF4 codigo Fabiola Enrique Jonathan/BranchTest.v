`include"CPU.v"

module CPUTest;
reg Clock;
reg Clear;
reg Enable;
reg [0:31] Address;
integer fi,fo,code,i;
reg [0:7] data;
parameter sim_time = 5000;
//===========================
CPU cpu(Clock, Clear,Enable);
//simulation times
initial #sim_time $finish;

initial begin
  // Monitor signals for  nestor
  // $monitor("CS:                                 <%d>\nMAR:                          <%d> \nIR      <%b>     \nPC:                           <%d>   \nMDRin:  <%b> \nMDRout: <%b> \nMARin:  <%b> \nMARout: <%b> \nRAM_out:<%b>  \nALU_out:<%b> \nTime:               {%d} \n===================end====================\n",
  // cpu.CU.CurrentState, cpu.addressout_MAR, cpu.Inst_from_IR, cpu.datapath.rfio.RF.wr15,
  // cpu.datapath.datain, cpu.datapath.dataout, cpu.datapath.result, cpu.datapath.address_out, cpu.Inst_from_mem, cpu.datapath.aluio.result,$time);
  $monitor("CS:                                 <%d>\nMAR:                          <%d> \nIR      <%b>     \nPC:                           <%d>   \nMDRin:  <%b> = <%d>  \nMDRout: <%b> = <%d> \nMARin:  <%b> = <%d> \nMARout: <%b> \nRAM_out:<%b>  \nALU_out:<%b>\nR0: <%d>  R4: <%d>    R8 <%d>      R12<%d>\nR1: <%d>  R5: <%d>    R9 <%d>      R13<%d>\nR2: <%d>  R6: <%d>    R10<%d>      R14<%d>\nR3: <%d>  R7: <%d>    R11<%d>      R15<%d>\nTime:               {%d} \n C:%b V:%b N:%b Z:%b \n Cond: %b \n A from ALU: %d \n B from ALU: %d\n Opcode: %b\nClock: {%d} \n===================end====================\n",//
  cpu.CU.CurrentState, cpu.addressout_MAR, cpu.Inst_from_IR, cpu.datapath.rfio.RF.wr15,
  cpu.datapath.datain, cpu.datapath.datain,cpu.datapath.dataout, cpu.datapath.dataout,cpu.datapath.result, cpu.datapath.result,cpu.datapath.address_out, cpu.Inst_from_mem, 
  cpu.datapath.aluio.result,cpu.datapath.rfio.RF.wr0,cpu.datapath.rfio.RF.wr4,cpu.datapath.rfio.RF.wr8,
  cpu.datapath.rfio.RF.wr12,cpu.datapath.rfio.RF.wr1,cpu.datapath.rfio.RF.wr5,cpu.datapath.rfio.RF.wr9,cpu.datapath.rfio.RF.wr13,
  cpu.datapath.rfio.RF.wr2,cpu.datapath.rfio.RF.wr6,cpu.datapath.rfio.RF.wr10,cpu.datapath.rfio.RF.wr14,cpu.datapath.rfio.RF.wr3,
  cpu.datapath.rfio.RF.wr7,cpu.datapath.rfio.RF.wr11,cpu.datapath.rfio.RF.wr15, $time, cpu.datapath.C, cpu.datapath.V, cpu.datapath.N, cpu.datapath.aluio.Zero, cpu.CU.Cond, cpu.datapath.A, cpu.datapath.B, cpu.datapath.aluio.sel, Clock);//
end
// Pre-cargar --------------------------------------------------------------------------------------
initial begin
    fi = $fopen("testcode_arm1.txt","r");
    Address = 32'd0;
    while (!$feof(fi)) begin
    code = $fscanf(fi,"%b",data);
    cpu.ram.Mem[Address] = data;
    Address = Address + 1;
    end
    $fclose(fi);
end
// RAM TEST -----------------------------------------------------------------------------------------
initial
begin
    for(i = 0; i < 256; i = i + 1)
    begin
        Address = i;
        $display("Address = %d , Memory = %b", Address,cpu.ram.Mem[i], $time);
    end
    $display("end ram===========================================================");
end

initial begin
//
  Clock <= 1'b0;
  Clear <= 1'b0;
  Enable <= 1'b1;
end

initial begin
  
  repeat(100) #10 Clock <= ~Clock; 
  
end

endmodule