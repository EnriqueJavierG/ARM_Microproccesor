module StateRegister(input [0:9] Ds, input Clk, input Clear, output reg [0:9] Qs);
    initial Qs <= 10'b0;
    always @ (posedge Clk or posedge Clear)
    begin
      if(Clear)
      begin
        Qs <= 10'b000000000;
      end
      else
        Qs <= Ds;
    end
endmodule