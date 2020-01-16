module ConditionTester(output reg Condition, input [31:0] IR, input N_, Zero_, C_, V_);


wire N = N_;
wire Zero = Zero_;
wire C = C_;
wire V = V_;

    always@(IR, N_, Zero_, C_, V_)
    begin

        case (IR[31:28])
            
            4'b0000:            // Zero == 1 
                begin
                Condition <= (Zero == 1'b1) ? 1'b1 : 1'b0;
                end 

            4'b0001:            //NE: Zero == 0
                begin
                    Condition <= (Zero == 1'b0) ? 1'b1 : 1'b0;
                end

            4'b0010:            //CS: C == 1
                begin
                    Condition <= (C == 1'b1) ? 1'b1 : 1'b0;
                end 
            
            4'b0011:            //CC: C == 0
                begin
                    Condition <= (C == 1'b0) ? 1'b1 : 1'b0;
                end 

            4'b0100:            //MI: N == 1
                begin
                  Condition <= (N == 1'b1) ? 1'b1 : 1'b0;
                end 

            4'b0101:            //PL: N == 0
                begin
                  Condition <= (N == 1'b0) ? 1'b1 : 1'b0;
                end 

            4'b0110:            //VS: V == 1
                begin
                   Condition <= (V == 1'b1) ? 1'b1 : 1'b0;
                end 

            4'b0111:            //VC: V == 0
                begin
                   Condition <= (V == 1'b0) ? 1'b1 : 1'b0;
                end 

            4'b1000:            //HI: C == 1 && Zero == 0         
                begin
                    Condition <= (C == 1'b1 && Zero== 1'b0) ? 1'b1 : 1'b0;
                end 

            4'b1001:            //LS: C == 0 || Zero == 1
                begin
                  Condition <= (C == 1'b0 || Zero== 1'b0) ? 1'b1 : 1'b0;
                end

            4'b1010:            //GE: N == V
                begin
                    Condition <= (N == V ) ? 1'b1 : 1'b0;
                end 
            
            4'b1011:           //LT: N != V
                begin
                    Condition <= (N != V) ? 1'b1 : 1'b0;
                end 

            4'b1100:           //GT: Zero == 0 && N == V
                begin
                     Condition <= (Zero == 1'b0 && N == V) ? 1'b1 : 1'b0;
                end 

            4'b1101:           //LE: Zero == 1 || N != V
                begin
                   Condition <= (Zero == 1'b1 || N != V) ? 1'b1 : 1'b0;
                end       

            4'b1110:           //AL 
                begin
                     Condition <= 1'b1;
                end 

            4'b1111:
                begin
                    Condition = 1'b0;
                end 

            default:
            begin
                Condition = 1'b0;
            end 
        endcase
    end
endmodule