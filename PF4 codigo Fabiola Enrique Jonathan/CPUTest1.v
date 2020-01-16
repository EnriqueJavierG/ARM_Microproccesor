`include "CPU.v"

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
//simulation time
initial #sim_time $finish;

initial begin
  // Monitor signals for  nestor
  // $monitor("CurrentState:                       {%d}\nMAR:                          {%d} \nIR      {%b}     \nPC:                           {%d}   \nMDRin:  {%b} \nMDRout: {%b} \nMARin:  {%b} \nMARout: {%b} \nRAM_out:{%b}  \nALU_out:{%b} \nTime:               {%d} \n===================end====================\n",
  // cpu.CU.CurrentState, cpu.addressout_MAR, cpu.Inst_from_IR, cpu.datapath.rfio.RF.wr15,
  // cpu.datapath.datain, cpu.datapath.dataout, cpu.datapath.result, cpu.datapath.address_out, cpu.Inst_from_mem, cpu.datapath.aluio.result,$time);
//  $monitor("CurrentState:                       {%d}\nMAR:                          {%d} \nIR      <%b>     \nPC:                           {%d}   \nMDRin:  <%b> = {%d}  \nMDRout: <%b> = {%d} \nMARin:  <%b> = {%d} \nMARout: <%b> = {%d} \nRAM_out:<%b> = {%d}  \nALU_out:<%b> = {%d}\nR0: {%b}  R4: {%b}    R8 {%b}\n      R12:{%b}\nR1: {%b}  R5: {%b}    R9 {%b}\n      R13:{%b}\nR2: {%b}  R6: {%b}    R10:{%b}\n      R14:{%b}\nR3: {%b}  R7: {%b}    R11:{%b}      R15:{%b}\nTime:               {%d} \n C:%b V:%b N:%b Z:%b \n Cond: %b \n A from ALU: %d \n B from ALU: %d\n Opcode: %b\nReadWrite: %b\nMA1:%b\n MA0:%b\nMLR_to_Reg_inCPU: %d\nMLRfromDec: %d\nMLRexitfromDec: %d \n===================end====================\n",//
//   cpu.CU.CurrentState,                    cpu.addressout_MAR,               cpu.Inst_from_IR,                 cpu.datapath.rfio.RF.wr15,
//   cpu.datapath.datain,                    cpu.datapath.datain,              cpu.datapath.dataout,             cpu.datapath.dataout,
//   cpu.datapath.result,                    cpu.datapath.result,              cpu.datapath.address_out,         cpu.datapath.address_out,
//   cpu.Inst_from_mem,                      cpu.Inst_from_mem,                cpu.datapath.aluio.result,        cpu.datapath.aluio.result,              
//   cpu.datapath.rfio.RF.wr0,               cpu.datapath.rfio.RF.wr4,         cpu.datapath.rfio.RF.wr8,         cpu.datapath.rfio.RF.wr12,              
//   cpu.datapath.rfio.RF.wr1,               cpu.datapath.rfio.RF.wr5,         cpu.datapath.rfio.RF.wr9,         cpu.datapath.rfio.RF.wr13,              
//   cpu.datapath.rfio.RF.wr2,               cpu.datapath.rfio.RF.wr6,         cpu.datapath.rfio.RF.wr10,        cpu.datapath.rfio.RF.wr14, 
//   cpu.datapath.rfio.RF.wr3,               cpu.datapath.rfio.RF.wr7,         cpu.datapath.rfio.RF.wr11,        cpu.datapath.rfio.RF.wr15,
//   $time,                                  cpu.datapath.C,                   cpu.datapath.V,                   cpu.datapath.N,
//   cpu.datapath.aluio.Zero,                cpu.CU.Cond,                      cpu.datapath.A,                   cpu.datapath.B,
//   cpu.datapath.aluio.sel, cpu.R_W, cpu.MA1, cpu.MA0, cpu.MLR_to_Reg,cpu.CU.MLR,cpu.CU.MLR_to_Reg);//
$monitor("CurrentState:                       {%d}\nMARin:  {%b} = {%d} \nMARout: {%b} = {%d} \n\n===================end====================\n",//
cpu.CU.CurrentState,cpu.addressout_MAR,cpu.addressout_MAR,     cpu.datapath.address_out,         cpu.datapath.address_out);

// $monitor("CS:                                 {%d}\nMAR:                          {%d} \nIR      <%b>     \nPC:                           {%d}   \nMDRin:  <%b> = {%d}  \nMDRout: <%b> = {%d} \nMARin:  <%b> = {%d} \nMARout: <%b> = {%d} \nRAM_out:<%b> = {%d}  \nALU_out:<%b> = {%d}\nShifter_Out = <%b> \nR0: {%d}  R4: {%d}    R8: {%d}      R12:{%d}\nR1: {%d}  R5: {%d}    R9: {%d}      R13:{%d}\nR2: {%d}  R6: {%d}    R10:{%d}      R14:{%d}\nR3: {%d}  R7: {%d}    R11:{%d}      R15:{%d}\nTime:       {%d} \nALU =  C:%b V:%b N:%b Z:%b \nPSR =  C:%b V:%b N:%b Z:%b   \n Cond: %b \n A from ALU: %d \n B from ALU: %d\n Opcode: %b \n===================end====================\n",//
//   cpu.CU.CurrentState,                    cpu.addressout_MAR,               cpu.Inst_from_IR,                 cpu.datapath.rfio.RF.wr15,
//   cpu.datapath.datain,                    cpu.datapath.datain,              cpu.datapath.dataout,             cpu.datapath.dataout,
//   cpu.datapath.result,                    cpu.datapath.result,              cpu.datapath.address_out,         cpu.datapath.address_out,
//   cpu.Inst_from_mem,                      cpu.Inst_from_mem,                cpu.datapath.aluio.result,        cpu.datapath.aluio.result, cpu.datapath.operand_from_shifter,
               
//   cpu.datapath.rfio.RF.wr0,               cpu.datapath.rfio.RF.wr4,         cpu.datapath.rfio.RF.wr8,         cpu.datapath.rfio.RF.wr12,              
//   cpu.datapath.rfio.RF.wr1,               cpu.datapath.rfio.RF.wr5,         cpu.datapath.rfio.RF.wr9,         cpu.datapath.rfio.RF.wr13,              
//   cpu.datapath.rfio.RF.wr2,               cpu.datapath.rfio.RF.wr6,         cpu.datapath.rfio.RF.wr10,        cpu.datapath.rfio.RF.wr14, 
//   cpu.datapath.rfio.RF.wr3,               cpu.datapath.rfio.RF.wr7,         cpu.datapath.rfio.RF.wr11,        cpu.datapath.rfio.RF.wr15,
//   $time,                                  cpu.datapath.C,                   cpu.datapath.V,                   cpu.datapath.N,
//   cpu.datapath.aluio.Zero, cpu.datapath.aluio.C_, cpu.datapath.aluio.V_, cpu.datapath.aluio.N_, cpu.datapath.aluio.Zero_,               cpu.CU.Cond,                      cpu.datapath.A,                   cpu.datapath.B,
//   cpu.datapath.aluio.sel);

end
// Pre-cargar --------------------------------------------------------------------------------------
initial begin
    fi = $fopen("testcode_arm3.txt","r");
    Address = 32'd0;
    while (!$feof(fi)) begin
    code = $fscanf(fi,"%b",data);
    cpu.ram.Mem[Address] = data;
    Address = Address + 1;
    end
    $fclose(fi);
end
// RAM TEST -----------------------------------------------------------------------------------------
// initial
// begin
//     for(i = 0; i < 256; i = i + 1)
//     begin
//         Address = i;
//         $display("Address = %d , Memory = %b", Address,cpu.ram.Mem[i], $time);
//     end
//     $display("end ram===========================================================");
// end

initial begin
//
  Clock <= 1'b0;
  Clear <= 1'b0;
  Enable <= 1'b1;
end

initial begin
  
  repeat(500) #1 Clock <= ~Clock; 
  
end

initial begin
 # 501;
    for(i = 0; i < 200; i = i + 4)
    begin
        Address = i;
        $display("Address = %d , Memory = %b %b %b %b", Address,cpu.ram.Mem[i],cpu.ram.Mem[i+1],cpu.ram.Mem[i+2],cpu.ram.Mem[i+3], $time);
    end
    $display("end ram===========================================================");

end

endmodule