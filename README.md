# ARM_Microproccesor
Project for Computer Architecture Class. 
Here you will find a functional ARM CPU created in Verilog 

## Organization
    The CPU is built in a way that you can utilize the individual parts separately. Behavioral programming was used to build the indiviual parts and then united them in a structural way. The various components were then coded into different partitions before final assembly. 
    
## Parts
    - ControlUnit: this includes the Next State Decoder, State Decoder and Encoder. 
    - ALUio: this includes the ALU, PSR and a multiplexer.
    - Datapath: this includes every component except the RAM and the Control Unit. 
    - LoQueFaMeMandoAHacer: inlcudes a module call RFio that includes the Register File and two multiplexers.
    - IRandShifter: includes the Instruction Register and the Shifter.

![High level connections](https://user-images.githubusercontent.com/21070325/197694135-df559144-09ea-4b52-8a99-8c0963e6a5c6.png)

![Circuit Diagarm](https://user-images.githubusercontent.com/21070325/197694069-6891ffa2-958c-4214-ae81-db5bfe9f55e6.png)

![State diagram](https://user-images.githubusercontent.com/21070325/197694084-3c885de1-0de9-4cfc-b263-277b0d8b5d26.png)
