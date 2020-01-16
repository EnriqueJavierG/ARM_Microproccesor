# ARM_Microproccesor
Project for Computer Architecture Class. 
Here you will find a functional ARM CPU created in Verilog 

## Organization
    The CPU is built in a way that you can utilize the individual parts separately. Behavioral programming was used to build the indiviual parts and then united them in a structural way.
    
## Parts
    - ControlUnit: this includes the Next State Decoder, State Decoder and Encoder. 
    - ALUio: this includes the ALU, PSR and a multiplexer.
    - Datapath: this includes every component except the RAM and the Control Unit. 
    - LoQueFaMeMandoAHacer: inlcudes a module call RFio that includes the Register File and two multiplexers.
    - IRandShifter: includes the Instruction Register and the Shifter.
